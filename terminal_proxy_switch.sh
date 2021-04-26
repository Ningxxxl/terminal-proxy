#!/bin/bash

INFO_ON="\n\t\033[1mPROXY-SWITCH\033[0m \t ---\t---\t---  \t  [\033[1;42;30m ON \033[0m] "
INFO_OFF="\n\t\033[1mPROXY-SWITCH\033[0m \t -×-\t-×-\t-×-  \t [\033[1;47;31m OFF \033[0m] "

OPT=$(echo $1 | tr 'a-z' 'A-Z')

if [ "$OPT" == "" ]; then
    [ "$http_proxy" == "" ] && OPT="-ON" || OPT="-OFF"
fi

function proxy_on() {
    export http_proxy=http://127.0.0.1:8889
    export https_proxy=$http_proxy
    # echo -e "PROXY ON"
}

function proxy_off() {
    unset http_proxy
    unset https_proxy
    # echo -e "PROXY OFF"
}

case $OPT in
"-ON")
    proxy_on
    echo -e $INFO_ON
    ;;
"-OFF")
    proxy_off
    echo -e $INFO_OFF
    ;;
"-I")
    curl cip.cc && echo
    ;;
*)
    echo -e " \033[1;41;33m ERR \033[0m 参数错误，详见："$0
    # $(pwd)/$0
    ;;
esac
