# Name of the Root CA (Certificate Authority) key file.
root_ca_key="root-ca.pem"

# Name of the Root CA (Certificate Authority) certificate file.
root_ca_cert="root-ca-cert.pem"

server_key="server-key.pem"
server_req="server-req.pem"
server_cert="server-cert.pem"

# Config files
ca_config_file="$HOME/Desktop/openssl-configs/openssl-ca.conf"
server_config_file="$HOME/Desktop/openssl-configs/openssl-server.conf"

# echo "hello world" > ${config_files}/sample.txt
# echo "hello world" > ~/Desktop/sample.txt
# -config $ca_config_file \
# -config $server_config_file \
#,IP:127.0.0.1,IP:192.168.0.123

# Creating the Certificate Authority's Certificate and Keys
openssl genrsa 2048 > $root_ca_key

openssl req \
   -new -x509 -nodes \
   -subj '/CN=*localhost' -addext 'subjectAltName=DNS:*localhost' \
   -key $root_ca_key \
   -out $root_ca_cert

# Creating the Server's Certificate and Keys
openssl req \
   -newkey rsa:2048 -nodes \
   -subj '/CN=*localhost' -addext 'subjectAltName=DNS:*localhost' \
   -keyout $server_key \
   -out $server_req

openssl x509 -req -set_serial 01 \
   -in $server_req \
   -out $server_cert \
   -CA $root_ca_cert \
   -CAkey $root_ca_key