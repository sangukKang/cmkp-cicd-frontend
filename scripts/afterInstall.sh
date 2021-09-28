#! /bin/sh

### build ###
cd /home/ubuntu/source

npm install

if [ -z $? ]
then
  npm run build

  if [ -z $? ]
  then
    cp -r dist/* home/ubuntu/app
  else
    echo "npm build fail"
  fi

else
  echo "npm install fail"
fi
