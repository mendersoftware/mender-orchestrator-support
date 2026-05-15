Rtos artifacts were created with:

```bash
INTERFACE=rtos-interface
DEVICE=rtos
VERSION=$DEVICE-v3
PAYLOAD=$VERSION-payload

touch $PAYLOAD
mender-artifact \
  write module-image \
  --type $INTERFACE \
  --compatible-types $DEVICE \
  --file $PAYLOAD \
  --output-path $VERSION.mender \
  --artifact-name $VERSION
```



The manifest artifacts were created with:

``` bash
DEVICE_TYPE="gateway"
VERSION="v1"
./mender-orchestrator-manifest-gen \
    -n system-core-${VERSION} \
    -o manifest-${VERSION}.mender \
    -t $DEVICE_TYPE \
    manifest-${VERSION}.yaml
```
