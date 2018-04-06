DATA_DIR="$PWD\\/$1\\/data"
sed -e "s@\$SCRIPT_FILE@$2@g" \
    -e "s@\$SRC_FILE@$3@g" \
    -e "s@\$EXE_FILE@$4@g" \
    -e "s@\$DATA_DIR@$DATA_DIR@g" \
    config.json > $1/config.json

./runc --root myrootlol/ run -b $1 aaa

