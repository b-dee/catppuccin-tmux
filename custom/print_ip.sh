#!/usr/bin/env bash
ifconfig en0 | awk '/inet / { printf("%s", $2); }'
