#!/bin/bash
ls -al /dnst-conf
mkdir -p /root/.klei/DoNotStarveTogether
ln -s /dnst-conf /root/.klei/DoNotStarveTogether
cd  /root/.klei
pwd
ls 
cd  DoNotStarveTogether
pwd
ls 
cd /dnst/bin
./dontstarve_dedicated_server_nullrenderer  -console