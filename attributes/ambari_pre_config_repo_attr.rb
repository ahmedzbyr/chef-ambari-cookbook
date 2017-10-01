

# #VERSION_NUMBER=2.5.1.0-159
# [ambari-2.5.1.0]
# name=ambari Version - ambari-2.5.1.0
# baseurl=http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.5.1.0
# gpgcheck=1
# gpgkey=http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.5.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
# enabled=1
# priority=1


default['yum_repository']['ambari-2.5.1.0']['description'] = 'ambari Version - ambari-2.5.1.0'
default['yum_repository']['ambari-2.5.1.0']['baseurl'] = 'http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.5.1.0'
default['yum_repository']['ambari-2.5.1.0']['gpgkey'] = 'http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.5.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins'
default['yum_repository']['ambari-2.5.1.0']['gpgcheck'] = true
default['yum_repository']['ambari-2.5.1.0']['enabled'] = true
default['yum_repository']['ambari-2.5.1.0']['priority'] = '1'



# #VERSION_NUMBER=2.6.1.0-129
# [HDP-2.6.1.0]
# name=HDP Version - HDP-2.6.1.0
# baseurl=http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0
# gpgcheck=1
# gpgkey=http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
# enabled=1
# priority=1

default['yum_repository']['HDP-2.6.1.0']['description'] = 'HDP Version - HDP-2.6.1.0'
default['yum_repository']['HDP-2.6.1.0']['baseurl'] = 'http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0'
default['yum_repository']['HDP-2.6.1.0']['gpgkey'] = 'http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins'
default['yum_repository']['HDP-2.6.1.0']['gpgcheck'] = true
default['yum_repository']['HDP-2.6.1.0']['enabled'] = true
default['yum_repository']['HDP-2.6.1.0']['priority'] = '1'



# [HDP-UTILS-1.1.0.21]
# name=HDP-UTILS Version - HDP-UTILS-1.1.0.21
# baseurl=http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.21/repos/centos6
# gpgcheck=1
# gpgkey=http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
# enabled=1
# priority=1


default['yum_repository']['HDP-UTILS-1.1.0.21']['description'] = 'HDP-UTILS Version - HDP-UTILS-1.1.0.21'
default['yum_repository']['HDP-UTILS-1.1.0.21']['baseurl'] = 'http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.21/repos/centos6'
default['yum_repository']['HDP-UTILS-1.1.0.21']['gpgkey'] = 'http://public-repo-1.hortonworks.com/HDP/centos6/2.x/updates/2.6.1.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins'
default['yum_repository']['HDP-UTILS-1.1.0.21']['gpgcheck'] = true
default['yum_repository']['HDP-UTILS-1.1.0.21']['enabled'] = true
default['yum_repository']['HDP-UTILS-1.1.0.21']['priority'] = '1'



