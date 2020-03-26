#!/bin/sh

## documentation:
## https://github.com/binance-exchange/binance-official-api-docs/blob/master/rest-api.md

ENDPOINT="https://api.binance.com"

APIKEY='<put your API key here>'
APISECRET='<put your API secret here>'

CURL_OPTIONS="--no-progress-meter"
function send_get_request () {

  curl ${CURL_OPTIONS} -H "X-MBX-APIKEY: ${APIKEY}" -X ${METHOD} "${ENDPOINT}${REQUEST}" -d "${DEFINITIONS}"

}

