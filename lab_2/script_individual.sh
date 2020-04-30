#!/bin/bash

find ~ -name "*.txt" -exec grep -oEi "" {} \; #| tr A-Z a-z | sort -u > base.txt


([12]\d{3})\/(0\d|11|12)\/([012]\d|30) [01]\d|2[0-3]:
