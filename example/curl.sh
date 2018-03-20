#!/bin/bash
#set -x #echo on

# Author
#     Felix Lehmann
# Examples
#     ./curl.sh
#     ./curl.sh v1 google adwords v201710 published

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ -z "$4" ] || [ -z "$5" ]; then
    inger_version="v1"
    vendor="facebook"
    service="graph"
    version="v2.10"
    method="deprecated"
else
    inger_version=$1
    vendor=$2
    service=$3
    version=$4
    method=$5
fi

api_url="http://inger.io/$inger_version/$vendor/$service/$version/$method"
if [ -x "$(command -v jq)" ]; then
    deprecation_date=source curl -s $api_url --header 'content-type: application/json' | jq
else
    # jq for JSON pretty print not available
    deprecation_date=source curl -s $api_url --header 'content-type: application/json'
fi

echo $deprecation_date
