#!/usr/bin/env bash
hosts=$1
hosts=$(echo $hosts | sed "s/,/ /g" | sed "s/ \+/ /g");
sed -i "s/ENV_HOST/$hosts/" /etc/nginx/sites-available/site.conf
