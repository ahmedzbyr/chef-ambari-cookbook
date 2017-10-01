name 'chef_ambari'
maintainer 'AHMED ZBYR'
maintainer_email 'ahmedzbyr@gmail.com'
license 'mit'
description 'Installs/Configures chef_ambari'
long_description 'Installs/Configures chef_ambari'
version '0.1.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/chef_ambari/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/chef_ambari' if respond_to?(:source_url)

depends 'users', '~> 4.0.1'
depends 'yum', '~> 3.11.0'
depends 'poise-python', '~> 1.5.0'
depends 'sudo', '~> 2.7.1'
depends 'users', '~> 4.0.3'
depends 'selinux', '~> 0.5.0'
depends 'sysctl', '~> 0.6.2'
depends 'hostsfile', '~> 2.4.5'
