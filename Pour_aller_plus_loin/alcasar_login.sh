#!/bin/bash

wget --save-cookies cookies.txt --keep-session-cookies --post-data="username=$1&password=$2" "https://alcasar.laplateforme.io"
