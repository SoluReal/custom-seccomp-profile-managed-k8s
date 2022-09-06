#!/bin/sh

set -e

cp /audit.json /var/lib/kubelet/seccomp/audit.json

echo "Installed or updated seccomp profile(s)"
