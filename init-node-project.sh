mkdir $1
cp ./git/.gitignore $1
cp ./format/. $1
cd $1
yarn init
yarn add -D eslint
yarn add -D eslint-config-airbnb-base
yarn add -D eslint-plugin-import
yarn add -D prettier