#!/bin/bash

# This is a script from ubuntu question's so far I have run on shellcheck and 
# corrected the errors. # https://stackoverflow.com/questions/33986176/
# dig-returns-ip-value-consistently-when-run-from-shell-not-from-bash-script


DUCKDNS=( "sub1.duckdns.org"
        "sub2.duckdns.org"
        "sub3.duckdns.org"
        "sub4.duckdns.org" )

function resolveIP () {
    CURRENT_IP=$(dig +short ; dig +identify "$1")
    # CURRENT_IP=$(dig +crypto "$1")
echo "$CURRENT_IP"
}

for HOST in "${DUCKDNS[@]}"

do
    IP=$(resolveIP "$HOST")
    echo -e "$HOST ... $IP"
done
