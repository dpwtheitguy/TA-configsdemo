#!/bin/bash
# CAT's sshd config to Splunk
# Daniel Wilson <dwilson@voleon.net>
# ver 8.3.2020.1

  
###e No variant var, exit on error, stop globbing
  set -euf -o pipefail

### Globals
  declare -r strConfigLocation="/etc/ssh/sshd_config"

### Functions
check-os() {
  # Verify Redhat
  if [[ ! -f /etc/redhat-release ]]; then
    logger "status=stopped message=\"Bad OS. Only Redhat supported.\""
    exit 1;
  fi

  # Verify root
  if [ "$EUID" -ne 0 ]; then
    logger "status=stopped message=\"Please run as user=root\" "
    exit 1;
  fi
}

do-sleep() {
  # Ease the IO
  sleep $[ ( $RANDOM % 20 )  + 1 ]s
}

do-execcat() {
  # display config
  if [ -f "$strConfigLocation" ]; then
    cat $strConfigLocation
  fi
}

main() {
  check-os
  do-sleep
  do-execcat
}
main
