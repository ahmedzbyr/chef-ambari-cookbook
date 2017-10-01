#
# Cookbook:: chef_ambari
# Recipe:: ambari_pre_config_repo_setup
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

node['yum_repository'].each do | ambari_repos, repo_info |
    log "Repository : #{ambari_repos} " do level :info end
    yum_repository ambari_repos do
      description   node['yum_repository'][ambari_repos]['description']
      baseurl       node['yum_repository'][ambari_repos]['baseurl']
      gpgkey        node['yum_repository'][ambari_repos]['gpgkey']
      gpgcheck      node['yum_repository'][ambari_repos]['gpgcheck']
      enabled       node['yum_repository'][ambari_repos]['enabled']
      priority      node['yum_repository'][ambari_repos]['priority']
    end
end