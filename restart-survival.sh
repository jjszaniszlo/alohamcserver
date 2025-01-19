#!/bin/bash

function rcon {
    /usr/local/bin/mcrcon -P $1 -p ${MINECRAFT_RCON_PASSWORD} "$2"
}

rcon 25576 'say [§4WARNING§r] Server restart process is starting in 1 minute!'
sleep 1m

rcon 25576 'say [§4WARNING§r] Server restart process is starting NOW.'
rcon 25576 'stop'
