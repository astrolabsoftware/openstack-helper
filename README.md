# openstack-helper

Start an openstack development machine to host fink-broker software stack

# Dashboard

https://horizon.ijclab.in2p3.fr/dashboard/auth/login/?next=/dashboard/

Use "statuslab" domain

# Install openstack client

```bash
python3 -m venv $HOME/venv/openstack
. $HOME/venv/openstack/bin/activate
pip3 install python-openstackclient python-magnumclient python-neutronclient python-cinderclient python-octaviaclient
```

# Useful Openstack commands

```bash
openstack server list
# List usable flavors
openstack flavor list | grep vd
# Describe a flavor
openstack flavor show <flavor-name>
# Connect to fedora vm
ssh fedora@<vm-ip>
# Retrieve kubeconfig
openstack coe cluster config --dir <cluster-name>
```

