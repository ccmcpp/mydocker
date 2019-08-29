#!/bin/sh

set -eux
GOROOT=/usr/local/go/
GOPATH=$(cd "$(dirname "$0")/../";pwd)
# if [ ! -f "${GOPATH}/bin/dep" ]; then
#     ${GOROOT}/bin/go get -u github.com/golang/dep/cmd/dep
# fi
cd "${GOPATH}/src/"
# ${GOPATH}/bin/dep ensure -vendor-only
# pip install --no-cache-dir -r /python/requirements.txt

${GOROOT}/bin/go build  -o ${GOPATH}/bin/mydocker  ${GOPATH}/src/chapter/chapter2-1/main.go
#CONFIG_PATH this value can change to folder in ./conf

# Above "loc" can change "ali_dev", "dev", "pro".
#export CONFIG_PATH="loc"
${GOPATH}/bin/mydocker


