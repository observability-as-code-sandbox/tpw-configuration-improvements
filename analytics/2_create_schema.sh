#!/bin/bash

_host="https://<analytics-host>"

_account_name="<global-account-name>" # replace
_analytics_api_key="<analytics-api-key>" # replace
_schema_name="myProducts"
_schema_file="schema.json"

response=$(curl -X POST "${_host}/events/schema/${_schema_name}" -H"X-Events-API-AccountName:${_account_name}" -H"X-Events-API-Key:${_analytics_api_key}"  -H"Content-type: application/vnd.appd.events+json;v=2" --data "@${_schema_file}")

echo $response