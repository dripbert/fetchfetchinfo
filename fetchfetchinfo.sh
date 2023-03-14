#!/bin/bash

if [[ ${1} = '' ]]; then
    printf "Specify fetch to fetch\n"
    exit
fi

name="$(jq -r ".${1}.name" index.json)"
cate="$(jq -r ".${1}.cate" index.json)"
auth="$(jq -r ".${1}.auth" index.json)"
lice="$(jq -r ".${1}.lice" index.json)"
lang="$(jq -r ".${1}.lang" index.json)"
locc="$(jq -r ".${1}.locc" index.json)"

printf "\033[31;1m$name\n\033[0m"
printf "\033[36mCategorie:\033[0m $cate\n"
printf "\033[36mAuthor:\033[0m    $auth\n"
printf "\033[36mLicense:\033[0m   $lice\n"
printf "\033[36mLanguage:\033[0m  $lang\n"
printf "\033[36mLoC:\033[0m       $locc\n"
