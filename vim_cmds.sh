#!/bin/sh
$PWD=""
vim -E -s  $PWD  << EOF
:%s/ETH/call insertFrozenConsent('ETH/g
:%s/,/',/g
:%s/$/);/g
:update
:quit
EOF
