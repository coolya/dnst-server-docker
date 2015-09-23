#!/bin/bash
ls -al /dnst-conf
mkdir -p /root/.klei
ln -s /dnst-conf /root/.klei/DoNotStarveTogether
cp /dnst/mods/dedicated_server_mods_setup.lua /dnst/mods/dedicated_server_mods_setup.lua.bak
/steamcmd/steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /dnst +app_update 343050 validate +quit 
mv /dnst/mods/dedicated_server_mods_setup.lua.bak /dnst/mods/dedicated_server_mods_setup.lua
cd /dnst/bin
./dontstarve_dedicated_server_nullrenderer  -console