# Build transaction

cardano-cli conway transaction build \
    --tx-in <PAYMENT-UTXO> \
    --change-address payment.addr \
    --treasury-donation <DONATION AMOUNT> \
    --socket-path </PATH/TO/SOCKET> \
    --testnet-magic 2 \
    --out-file treasury-tx.raw

# Sign transaction

cardano-cli conway transaction sign \
    --tx-body-file treasury-tx.raw \
    --signing-key-file payment.skey \
    --testnet-magic 2 \
    --out-file treasury-tx.signed

# Submit transaction

cardano-cli conway transaction submit \
    --tx-file treasury-tx.signed \
    --socket-path </PATH/TO/SOCKET> \
    --testnet-magic 2
