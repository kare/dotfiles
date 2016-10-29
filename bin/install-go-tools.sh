#!/bin/bash

export GOPATH=$HOME/tmp

go get -u github.com/constabulary/gb/...
cp $GOPATH/bin/gb ~/bin
cp $GOPATH/bin/gb-vendor ~/bin

go get -u github.com/kisielk/errcheck
cp $GOPATH/bin/errcheck ~/bin

go get -u http://github.com/davidrjenni/A
cp $GOPATH/bin/A ~/bin

go get -u github.com/golang/lint/golint
cp $GOPATH/bin/golint ~/bin

go get -u golang.org/x/tools/cmd/goimports
cp $GOPATH/bin/goimports ~/bin

go get -u golang.org/x/tools/cmd/gorename
cp $GOPATH/bin/gorename ~/bin

go get -u golang.org/x/tools/cmd/guru
cp $GOPATH/bin/guru ~/bin

go get -u golang.org/x/tools/cmd/stringer
cp $GOPATH/bin/stringer ~/bin

go get -u github.com/klauspost/asmfmt/cmd/asmfmt
cp $GOPATH/bin/asmfmt ~/bin
