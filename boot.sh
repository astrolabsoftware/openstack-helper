# WARN this will create a volume which needs to be deleted after
openstack server create --flavor vd.16 --network public-2 --key-name ssh-key --image Fedora-38 --boot-from-volume 100  --wait fink-dev
openstack server add security group fink-dev "ssh + icmp"


