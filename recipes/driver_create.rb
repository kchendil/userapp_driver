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
admin_name=node['userappdriver']['admin_name']
nds_port=node['userappdriver']['edirectory_port']
driver_set=node['userappdriver']['driverset']


number=1.times.map{ 1000 +  Random.rand(11) }

template "/opt/novell/idm/Designer//NOVLUABASE.properties" do
  source "NOVLUABASE.properties.erb"
  owner "root" 
  mode "0644"  
end
execute "Create UserApp Driver" do
 user "root" 
 command "/bin/sh -c 'ulimit -n 4096; LD_LIBRARY_PATH=/opt/novell/idm/Designer/plugins/com.novell.core.iconeditor_4.0.0.201206110753/os/linux:/opt/novell/idm/Designer/plugins/com.novell.core.jars_4.0.0.201206110753/os/linux/x86:/opt/novell/idm/Designer/plugins/com.novell.core.jars_4.0.0.201206110753/os/linux/gcc3:$LD_LIBRARY_PATH \"/opt/novell/idm/Designer//Designer\" -nosplash -nl en -application com.novell.idm.rcp.DesignerHeadless -command deployDriver -p \"/opt/novell/idm/Designer//packages/eclipse/plugins\":\"/tmp/plugins\" -a \"#{admin_name}\" -w #{ldap_password} -s #{ldap_server_ip}:524 -c \"driverset1.system\" -b NOVLUABASE -l \"/var/opt/novell/idm/userapp_driver.log\" -u IDM4_15_UAP#{number} '" 
  action :run
end








