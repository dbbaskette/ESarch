#!/usr/bin/env sh

set -e +x

export FOLDER=`pwd`
echo "The path is ${OLDPATH}"

echo "Packaging the Trader UI App..."

cd source-code/trader-app-ui
  npm install
  npm run build
  cp manifest.yml build/manifest.yml
  cp Staticfile build/Staticfile
cd $FOLDER

cp -R source-code/trader-app-ui/build package-output
tree package-output/build

echo "Done building trader ui"
exit 0