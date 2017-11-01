#!/bin/bash


echo starting reverse ssh tunnel


while :; do ssh -R 12345:localhost:22 seanet.synology.me sleep infinity; sleep 30; done




