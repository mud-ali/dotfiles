#!/bin/zsh

session_id=$(loginctl list-sessions | grep tty2 | awk -F ' ' '{print $1}')

loginctl unlock-session $session_id

ps axf | grep kscreenlock | grep -v grep | awk '{print "kill -9 " $1}' | sudo sh
