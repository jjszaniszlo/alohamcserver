#!/bin/bash

function rcon {
    /user/local/bin/mcrcon -P 25577 -p ${MINECRAFT_RCON_PASSWORD} "$1"
}

rcon 'say [§4WARNING§r] Server backup process will begin in 5 minutes.'
sleep 5m

rcon 'say [§4WARNING§r] Server backup process is starting NOW.'

rcon "save-off"
rcon "save-all"
tar -cvpzf /backups/aloha-network/creative/creative-$(date +%F_%R).tar.gz /home/alohanetwork/alohamcserver/servers/creative/server
rcon "save-on"

rcon 'say [§bNOTICE§r] Server backup process is complete. Carry on.'

find /backups/aloha-network/creative -type f -mtime +7 -name 'creative-*.tar.gz' -delete
