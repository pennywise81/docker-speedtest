#!/bin/bash

speedtest-cli --json | jq -c >> /usr/local/apache2/htdocs/results.jsonl