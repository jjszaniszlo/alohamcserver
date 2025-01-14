#!/bin/bash

function rcon {
    /usr/local/bin/mcrcon -P 25576 -p ${MINECRAFT_RCON_PASSWORD} "$1"
}

rcon 'say [§4WARNING§r] Server backup process will begin in 5 minutes.'
sleep 5m

rcon 'say [§4WARNING§r] Server backup process is starting NOW.'

rcon "save-off"
rcon "save-all"
tar -cvpzf /backups/aloha-network/survival/survival-$(date +%F_%R).tar.gz /home/alohanetwork/alohamcserver/servers/survival/server
rcon "save-on"

rcon 'say [§bNOTICE§r] Server backup process is complete. Carry on.'

find /backups/aloha-network/survival -type f -mtime +7 -name 'survival-*.tar.gz' -delete
