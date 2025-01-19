#!/bin/bash

function rcon {
    /usr/local/bin/mcrcon -P $1 -p ${MINECRAFT_RCON_PASSWORD} "$2"
}

rcon 25576 'say [§4WARNING§r] Server restart process will begin in 15 minutes.'
rcon 25577 'say [§4WARNING§r] Server restart process will begin in 15 minutes.'
sleep 15m

rcon 25576 'say [§4WARNING§r] Server restart process is starting NOW.'
rcon 25577 'say [§4WARNING§r] Server restart process is starting NOW.'
rcon 25576 'stop'
rcon 25577 'stop'

