#!/usr/bin/env bash

log "/etc/hosts" green

cat <<EOF > "${work_dir:=}"/etc/hosts
127.0.1.1       ${hostname:=}
127.0.0.1       localhost
::1             localhost ip6-localhost ip6-loopback
fe00::0         ip6-localnet
ff00::0         ip6-mcastprefix
ff02::1         ip6-allnodes
ff02::2         ip6-allrouters
EOF
