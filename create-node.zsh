title="node_folder"
randomTitle="$RANDOM"
folder="$title"_"$randomTitle"
tsconfig_path=`cat $HOME/Documents/NodeJS\ projects/Payroll/tsconfig.json`
val=""

echo $(pwd "$0")
current_directory=$(basename $(pwd))

read -e -p 'Name of the project ' val
echo $val

# checking if $var is not empty, then going inside that folder
if [ -n "$val" ]; then
   mkdir $val #create folder with given name
   cd $val # go to that folder
fi

# checking if $var is empty, then appending directory name
if [ -z "$val" ]; then
   val=$current_directory
fi

npm init -y # initialize node project
npm i typescript nodemon ts-node-dev # install required modules
npm i # install node_modules

pkg=$(sed -i '' -r '$s/}/,\n"scripts":{\n"test": "echo \\\"Error: no test specified\\\" \&\& exit 1\",\n"build": "npm install \& tsc",\n"node": "ts-node-dev --respawn --transpile-only index.ts",\n"start": "tsc \& node build\/index.js"\n}\n}/' "package.json")
echo "console.log('Hello from Project: $val')" > index.ts
echo "$tsconfig_path" > tsconfig.json # create and copy contents into tsconfig.json
echo "/node_modules\n/.DS_Store\n/.env\n/.logs\n/build" > .gitignore
touch .env