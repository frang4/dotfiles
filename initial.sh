#!/usr/bin/env bash

sudo ip tuntap add user $USER mode tun ligolo
sudo ip link set ligolo up

