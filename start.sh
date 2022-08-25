#!/bin/bash

#clearing log
echo "ip address, attack, message" > beta/attack.csv
echo "" > log.txt

#recording log
sudo docker logs -f alpha >> log.txt &

#filtering log
stdbuf -oL tail -f -n0 log.txt | stdbuf -oL grep '\.\./' | stdbuf -oL cut -d ' ' -f1 | xargs -I{} echo "{},Local File Inclution,{} had attempted Local File Inclution" >> beta/attack.csv &
stdbuf -oL tail -f -n0 log.txt | stdbuf -oL grep '=http' | stdbuf -oL cut -d ' ' -f1 | xargs -I{} echo "{},Remote File Inclution,{} had attempted Remote File Inclution" >> beta/attack.csv &
stdbuf -oL tail -f -n0 log.txt | stdbuf -oL grep 'cmd=\|whoami\|id' | stdbuf -oL cut -d ' ' -f1 | xargs -I{} echo "{},Remote Command Execution,{} had attempted Remote Command Execution" >> beta/attack.csv &
stdbuf -oL tail -f -n0 log.txt | stdbuf -oL grep 'verysupersecret' | stdbuf -oL cut -d ' ' -f1 | xargs -I{} echo "{},Directory Listing,{} had attempted Directory Listing" >> beta/attack.csv &
