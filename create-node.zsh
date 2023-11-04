title="node_folder"
randomTitle="$RANDOM"
folder="$title"_"$randomTitle"
tsconfig_path=`cat /Users/abhiramnagadi/Documents/NodeJS\ projects/Payroll/tsconfig.json`
val=""

echo $(pwd "$0")

read -e -p 'Name of the project ' val
echo $val

# checking if $var is empty, then appending default random value
if [ -z "$val" ]; then
   echo "here"
   val=$folder
fi

echo $val

mkdir $val #create folder with given name
cd $val # go to that folder
npm init -y # initialize node project
npm i typescript nodemon ts-node-dev # install required modules
npm i # install node_modules
touch index.ts # create index.ts file
echo "$tsconfig_path" > tsconfig.json # create and copy contents into tsconfig.json