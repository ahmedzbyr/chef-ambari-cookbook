#
# Server informatoin for the `/etc/hosts` file changes this as required
#
# #
# # updating hostfile using the hostfile `cookbook`
# # Super Awesome hostfile creation.
# # =>  https://github.com/customink-webops/hostsfile
# #
#
default['chef_ambari']['etc_hosts_entries']['127.0.0.1']['hostname'] = 'localhost'
default['chef_ambari']['etc_hosts_entries']['127.0.0.1']['aliases']  = ['localhost.localdomain']
default['chef_ambari']['etc_hosts_entries']['127.0.0.1']['comment']  = 'Localhost loopback IP'
default['chef_ambari']['etc_hosts_entries']['127.0.0.1']['action']   = :create_if_missing