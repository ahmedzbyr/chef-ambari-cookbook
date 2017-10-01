#
# Cookbook:: chef_ambari
# Recipe:: ambari_pre_config_hostfile_setup
#
# The MIT License (MIT)
#
# Copyright:: 2017, AHMED ZBYR
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


#
# updating hostfile using the hostfile `cookbook`
# Super Awesome hostfile creation.
# =>  https://github.com/customink-webops/hostsfile
#

node['chef_ambari']['etc_hosts_entries'].each do | host_ip_address, host_info|
    hostsfile_entry host_ip_address do
      hostname    node['chef_ambari']['etc_hosts_entries'][host_ip_address]['hostname']
      aliases     node['chef_ambari']['etc_hosts_entries'][host_ip_address]['aliases']
      comment     node['chef_ambari']['etc_hosts_entries'][host_ip_address]['comment']
      action      node['chef_ambari']['etc_hosts_entries'][host_ip_address]['action']
    end
end