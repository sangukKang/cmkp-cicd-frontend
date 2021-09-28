#! /bin/sh

### build ###
cd /home/ubuntu/source

npm install

if [ $? -eq 0  ]
then
  npm run build

  if [ $? -eq 0  ]
  then
    cp -r dist/* home/ubuntu/app
  else
    echo "npm build fail"
  fi

else
  echo "npm install fail"
fi
