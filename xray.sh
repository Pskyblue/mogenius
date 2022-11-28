#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1ac41790-0666-420f-b32e-fa139d5724f3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

