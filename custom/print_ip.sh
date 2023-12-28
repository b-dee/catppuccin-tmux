#!/usr/bin/env bash
ifconfig en0 | awk '{ printf("%s", $2); }'
