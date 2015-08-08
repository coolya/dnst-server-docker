#!/bin/bash
ls -al /dnst-conf
mkdir -p /root/.klei/DoNotStarveTogether
ln -s /dnst-conf /root/.klei/DoNotStarveTogether
ls -al /root/.klei/DoNotStarveTogether
cd /dnst/bin
./dontstarve_dedicated_server_nullrenderer  -console