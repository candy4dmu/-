#! /bash/sh
echo "====== start go get ======="
alias sp="export http_proxy=http://172.16.0.101:8086;export https_proxy=http://172.16.0.101:8086"
alias usp="unset http_proxy; unset https_proxy"
sp
echo "+++ installing github.com/rogpeppe/godef"
go get -u github.com/rogpeppe/godef
echo "+++ installing github.com/nsf/gocode"
go get -u github.com/nsf/gocode
echo "+++ installing github.com/uudashr/gopkgs/cmd/gopkgs"
go get -u github.com/uudashr/gopkgs/cmd/gopkgs 
echo "+++ installing github.com/fatih/gomodifytags"
go get -u github.com/fatih/gomodifytags
echo "+++ installing github.com/haya14busa/goplay/cmd/goplay"
go get -u github.com/haya14busa/goplay/cmd/goplay
echo "+++ installing github.com/davidrjenni/reftools/cmd/fillstruct"
go get -u github.com/davidrjenni/reftools/cmd/fillstruct
echo "+++ installing github.com/acroca/go-symbols"
go get -u github.com/acroca/go-symbols
echo "+++ installing golang.org/x/tools/cmd/guru"
go get -u golang.org/x/tools/cmd/guru
echo "+++ installing golang.org/x/tools/cmd/gorename"
go get -u golang.org/x/tools/cmd/gorename
echo "+++ installing github.com/josharian/impl"
go get -u github.com/josharian/impl
echo "+++ installing golang.org/x/tools/cmd/godoc"
go get -u golang.org/x/tools/cmd/godoc
echo "+++ installing sourcegraph.com/sqs/goreturns"
go get -u sourcegraph.com/sqs/goreturns
echo "+++ installing github.com/golang/lint/golint"
go get -u github.com/golang/lint/golint
echo "+++ installing github.com/cweill/gotests/..."
go get -u github.com/cweill/gotests/...
echo "+++ installing github.com/ramya-rao-a/go-outline"
go get -u github.com/ramya-rao-a/go-outline
echo "+++ installing github.com/derekparker/delve/cmd/dlv"
go get -u github.com/derekparker/delve/cmd/dlv
usp
echo "===== finish ======"
