#!/bin/bash

git clone git@github.com:ijapesigan/docker-manmetavar.git
rm -rf "$PWD.git"
mv docker-manmetavar/.git "$PWD"
rm -rf docker-manmetavar
