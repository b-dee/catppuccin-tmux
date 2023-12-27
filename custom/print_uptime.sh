#!/usr/bin/env bash
uptime | awk '{ sub(",", "", $5); split($5, hm, ":"); printf("%dd %dh %dm", $3, hm[1], hm[2]); }'
