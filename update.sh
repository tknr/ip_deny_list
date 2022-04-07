#!/bin/bash
wget http://nami.jp/ipv4bycc/cidr.txt.gz -O cidr.txt.gz || exit 1
gunzip -f cidr.txt.gz || exit 1
sed -E 's/^(CN|KR|DE|GB|BR|FR|CA|AU|IT|NL|RU|IN)\t(.*)/\2 NG;/g' cidr.txt | grep 'NG;' >| ip_deny_list.txt
