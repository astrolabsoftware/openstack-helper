#!/bin/bash

set -euxo pipefail

VOLUME_SIZE=100
VM_NAME="fink-dev"

# WARN this will create a volume which needs to be deleted after vm deletion
openstack server create --flavor vd.16 --network public-2 --key-name ssh-key --image Fedora-38 --boot-from-volume "$VOLUME_SIZE"  --wait "$VM_NAME"
openstack server add security group "$VM_NAME" "ssh + icmp"


