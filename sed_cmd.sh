#!/bin/sh
sed -i 's/.//61' eth_l8000Hz_data.csv
sed -i 's/.//61' eth_r1000Hz_data.csv
sed -i 's/.//61' eth_r2000Hz_data.csv
sed -i 's/.//61' eth_r4000Hz_data.csv
sed -i 's/.//61' eth_r8000Hz_data.csv
cp eth_l1000Hz_data.csv eth_l1000Hz_data.sql
cp eth_l2000Hz_data.csv eth_l2000Hz_data.sql
cp eth_l4000Hz_data.csv eth_l4000Hz_data.sql
cp eth_l8000Hz_data.csv eth_l8000Hz_data.sql
cp eth_r1000Hz_data.csv eth_r1000Hz_data.sql
cp eth_r2000Hz_data.csv eth_r2000Hz_data.sql
cp eth_r4000Hz_data.csv eth_r4000Hz_data.sql
cp eth_r8000Hz_data.csv eth_r8000Hz_data.sql
