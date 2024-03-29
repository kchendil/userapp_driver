#
# Cookbook Name:: jade
# Recipe:: default
#
# Copyright 2013, Chendil Kumar Manoharan
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


ldap_port=node['userappdriver']['ldap_clear_port']
ldap_ssl_port=node['userappdriver']['ldap_ssl_port']
dn_admin_name=node['userappdriver']['ldap_user_name']
ldap_password=node['userappdriver']['ldap_password']
ldap_server_ip=node['userappdriver']['ldap_server_ip']

template "/tmp/UserAppDriverDelete.ldif" do
  source "UserAppDriverDelete.ldif.erb"
  owner "root" 
  mode "0644"  
end

execute "Delete UserApp Driver" do
 user "root" 
 command "ldapdelete -v -h #{ldap_server_ip} -p #{ldap_port} -D #{dn_admin_name} -w #{ldap_password} -c -r -f /tmp/UserAppDriverDelete.ldif" 
  action :run
end








