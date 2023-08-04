# ansible-role-opsys-unix
Basic Unix setup - will generally be called by roles for OS families and distros

## Optional variables
| Name | Type | Comment |
| ---- | ---- | ------- |
| ct_container | Boolen | set this if the instance is a container, e.g. in Vagrant |
| ct_hostname | string | if set, use this instead of `inventory_hostname` |
| ct_timezone | string | if set, write it to `/etc/timezone` and trigger `timedatectl` |
| local_ipv4 | IpV4 | usually the private IP of instance but the public one for bastions etc |
