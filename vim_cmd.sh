#/bin/sh
vim -E -s  eth_l8000Hz_data.csv  << EOF
:%s/ETH/call insert_audio_numeric_data('ETH/g
:%s/,/','/g
:%s/$/);/g
:update
:quit
EOF

vim -E -s  eth_r1000Hz_data.csv  << EOF
:%s/ETH/call insert_audio_numeric_data('ETH/g
:%s/,/','/g
:%s/$/);/g
:update
:quit
EOF

vim -E -s  eth_r2000Hz_data.csv  << EOF
:%s/ETH/call insert_audio_numeric_data('ETH/g
:%s/,/','/g
:%s/$/);/g
:update
:quit
EOF

vim -E -s  eth_r4000Hz_data.csv  << EOF
:%s/ETH/call insert_audio_numeric_data('ETH/g
:%s/,/','/g
:%s/$/);/g
:update
:quit
EOF

vim -E -s  eth_r8000Hz_data.csv  << EOF
:%s/ETH/call insert_audio_numeric_data('ETH/g
:%s/,/','/g
:%s/$/);/g
:update
:quit
EOF
