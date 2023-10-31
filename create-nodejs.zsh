title="node_folder"
randomTitle="$RANDOM"
folder="$title"_"$randomTitle"
tsconfig_path=`cat /Users/abhiramnagadi/Documents/NodeJS\ projects/Payroll/tsconfig.json`

mkdir $folder #create folder with random name
cd $folder # go to that folder
npm init -y # initialize node project
npm i typescript nodemon ts-node-dev # install typescript
npm i # install node_modules
touch index.ts # create index.ts file
echo "$tsconfig_path" > tsconfig.json # create and copy contents into tsconfig.json