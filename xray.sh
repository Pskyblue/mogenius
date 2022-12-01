#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2f38bda8-1d88-46de-a9a8-c6b71fc73783"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

