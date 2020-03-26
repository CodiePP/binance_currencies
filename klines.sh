#!/bin/sh

if [ $# -ne 1 ]; then
  echo "call $0 <SYMBOL>"
  exit 1
fi

SYMBOL=$1
INTERVAL="15m"
LIMIT=60

source ./binance.sh

METHOD="GET"
REQUEST="/api/v3/klines?symbol=${SYMBOL}&interval=${INTERVAL}&limit=${LIMIT}"

send_get_request | jq 'map(@csv)' | sed -e 's/\\"//g;s/"//g;s/\[//;s/\]//'

