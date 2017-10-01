#
# Cookbook:: chef_ambari
# Recipe:: ambari_pre_config_hadoop_common_config
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


##
# Setting up transparent_hugepage to `never`
##

  #  Transparent Huge Page Compaction is enabled and can cause significant performance problems.
  #  Run
  #    =>    "echo never > /sys/kernel/mm/transparent_hugepage/defrag" and
  #    =>    "echo never > /sys/kernel/mm/transparent_hugepage/enabled"
  #  to disable this, then add the same command to an init script such as `/etc/rc.local`
  #  so it will be set upon system reboot. The following hosts are affected:

# defrag never
execute "disable_transparent_hugepage_defrag" do
  not_if "grep -F '[never]' /sys/kernel/mm/transparent_hugepage/defrag"
  command "echo 'never > /sys/kernel/mm/transparent_hugepage/defrag' | sudo tee --append /sys/kernel/mm/transparent_hugepage/defrag"
end

# enabled never
execute "disable_transparent_hugepage_defrag_hugepage_enables" do
  not_if "grep -F '[never]' /sys/kernel/mm/transparent_hugepage/enabled"
  command "echo 'never > /sys/kernel/mm/transparent_hugepage/enabled' | sudo tee --append /sys/kernel/mm/transparent_hugepage/enabled"
end

# Making sure it stays that way after reboot.
template "/etc/rc.local" do
  source "init.rc.local.erb"
  owner 'root'
  group 'root'
  mode '0775'
end

##
# Starting rpcbind service on the servers.
##

package 'rpcbind' do
  action :install
end

service 'rpcbind' do
  action [:start, :enable]
end

package 'ntp' do
  action :install
end

service 'ntpd' do
  action [:start, :enable]
end

##
# Install telnet.
##

package 'telnet' do
  action :install
end


##
# Setting up Zookeeper directory permissions.
##

execute "chmod 777 /var/lib/zookeeper" do
  only_if { File.exist?("/var/lib/zookeeper") }
end
