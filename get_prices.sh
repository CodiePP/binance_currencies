#!/bin/sh

set -e

cys="BTCUSDT ETHBTC ETCBTC NEOBTC XMRBTC XRPBTC ADABTC EOSBTC XLMBTC BCHBTC ZECBTC LTCBTC TRXBTC IOTABTC RVNBTC ATOMBTC ALGOBTC XVGBTC BNBBTC LENDBTC XTZBTC AEBTC"

for cy in ${cys}; do
  ./klines.sh ${cy} > ${cy}.csv
  echo -n "${cy} "
done
echo
