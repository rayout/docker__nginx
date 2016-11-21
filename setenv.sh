#!/usr/bin/env bash
hosts=$1
path=$2
hosts=$(echo $hosts | sed "s/,/ /g" | sed "s/ \+/ /g");
sed -i "s/ENV_HOST/$hosts/" /etc/nginx/sites-available/site.conf
sed -i "s/ENV_PUBLIC_PATH/$path/" /etc/nginx/sites-available/site.conf
