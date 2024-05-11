#!/usr/bin/env bash

DAY_SECS=86400
HOUR_SECS=3600
MIN_SECS=60

# Seconds elapsed since boot.
# Not trying to be too accurate here...
secs_elapsed=$(( $(date +%s) - $(sysctl -n kern.boottime | cut -c9-18) ))

days=$(( secs_elapsed / DAY_SECS ))
secs_elapsed=$(( secs_elapsed % DAY_SECS ))

hours=$(( secs_elapsed / HOUR_SECS ))
secs_elapsed=$(( secs_elapsed % HOUR_SECS ))

mins=$(( secs_elapsed / MIN_SECS ))

printf "%dd %dh %dm" $days $hours $mins
