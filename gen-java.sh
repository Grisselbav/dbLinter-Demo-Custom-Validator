#!/bin/sh
# set the following environment variable for your access token before running this script
# export DBLINTER_ACCESS_TOKEN=***
cd ..
dblinter gen-java \
  --repoUrl=http://127.0.0.1:8080 \
  --tenantName=Demo \
  --userName=philipp.salvisberg+42@gmail.com \
  --configName=Default \
  --indent=4 \
  --outputName=dbLinter-Demo-Custom-Validator \
  --tenantFilter=Demo \
  --ruleFilter=.+ \
  --groupId=grisselbav.com \
  --packageName=grisselbav.com.demo.validator
