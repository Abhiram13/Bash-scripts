# #!/bin/bash

# # Server to ping (modify if desired)
# SERVER="8.8.8.8"  # Google's Public DNS

# # Measure download speed using wget
# DOWNLOAD_START=$(date +%s.%N)
# wget -qO- https://www.google.com/ >/dev/null 2>&1
# DOWNLOAD_END=$(date +%s.%N)

# # Calculate download time in seconds
# DOWNLOAD_TIME=$(echo "${DOWNLOAD_END} - ${DOWNLOAD_START}" | bc)

# # Measure upload speed using curl (requires data to upload)
# # Modify the URL and data accordingly
# UPLOAD_START=$(date +%s.%N)
# curl -X POST -d "dummy_data=test" https://your-upload-server.com/upload  >/dev/null 2>&1
# UPLOAD_END=$(date +%s.%N)

# # Calculate upload time in seconds
# UPLOAD_TIME=$(echo "${UPLOAD_END} - ${UPLOAD_START}" | bc)

# # Ping the server and get average time
# PING_AVG=$(ping -c 3 $SERVER | awk '/rtt/ {print $4}' | cut -d '/' -f2 | awk '{ sum += $1; n++ } END { printf("%.2f\n", sum / n) }')

# # Display results
# echo "Download Speed: Not Measured (requires wget to download a file)"
# # Assuming a 1MB file was downloaded, uncomment to display estimated speed
# #echo "Estimated Download Speed: $(bc <<< "1048576 / $DOWNLOAD_TIME") Mbps"
# echo "Upload Speed: Not Measured (requires upload server and data)"
# echo "Ping to $SERVER: ${PING_AVG} ms"

# # Note: This script provides a basic estimate and may not be as accurate as dedicated tools.
