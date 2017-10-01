#
# User Setup
#
# #
# # Creating a admin user/group for clouderamanager
# # https://github.com/chef-cookbooks/users
# # https://supermarket.chef.io/cookbooks/users#knife
# #
#

default['users_setup']['groups'] = { 'ambariadmin' => 2301 }

#
# Creating sudo users
# => https://supermarket.chef.io/cookbooks/sudo#knife
# => https://github.com/chef-cookbooks/sudo
#

default['authorization']['sudo']['groups'] = [ 'ambariadmin' ]

default['authorization']['sudo']['users'] = [ 'ambariadmin']
default['authorization']['sudo']['passwordless'] = true
default['authorization']['sudo']['include_sudoers_d'] = true
