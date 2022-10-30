#!/bin/sh
if [ ! -f UUID ]; then
  #UUID="ad806487-2d26-4636-98b6-ab85cc8521f7"
  UUID="ffb03d0f-3e06-4565-ae7a-c38c41246748"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

