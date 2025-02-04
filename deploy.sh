#!/bin/bash

echo ">> Deploying contract"

#ACCOUNT_ID=near-river.testnet
CONTRACT=near-river.testnet

#near delete "$CONTRACT" "$ACCOUNT_ID" --force
#near create-account "$CONTRACT" --masterAccount "$ACCOUNT_ID" --initialBalance 0.25

near deploy "$CONTRACT" ./target/wasm32-unknown-unknown/release/near_river_example.wasm --initFunction new --initArgs '{}'