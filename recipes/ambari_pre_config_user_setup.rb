#
# Cookbook:: chef_ambari
# Recipe:: ambari_pre_config_user_setup
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
# Creating a admin user/group for clouderamanager
# https://github.com/chef-cookbooks/users
# https://supermarket.chef.io/cookbooks/users#knife

node['users_setup']['groups'].each do | group_name, group_id |
  users_manage group_name do
    group_id group_id
    action [:create]
    data_bag 'admins'
  end
end


#
# #
# Creating sudo users
# => https://supermarket.chef.io/cookbooks/sudo#knife
# => https://github.com/chef-cookbooks/sudo
#

#include_recipe 'sudo'

##
# We will be creating a new entry in `sudoers.d` directory.
# We do not want the exsisting `sudoers` file to be changed.
##
node['authorization']['sudo']['users'].each do | sudo_user_on_server |
  sudo sudo_user_on_server do
      user sudo_user_on_server
      nopasswd  true
  end
end

node['authorization']['sudo']['groups'].each do | sudo_groups_on_server |
  sudo sudo_groups_on_server do
      user '%'+sudo_groups_on_server
      nopasswd  true
  end
end