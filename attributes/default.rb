#
# Cookbook Name:: delimited
# Attributes:: default
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


default['userappdriver']['driver_shim_zip_url'] = "http://164.99.86.253/publish/Builds/IDM/dorado_sp2_patch3/Drivers/dirxml_flatfile/20130625/dirxmlflatfilefp.zip"
default['userappdriver']['ulimit'] = "4096"
default['userappdriver']['admin_name']="admin.servers.system"
default['userappdriver']['edirectory_port']="524"
default['userappdriver']['idm_password']="n"
default['userappdriver']['driverset']="driverset1.system"
default['userappdriver']['driver_log_file']="/var/opt/novell/idm/delimited_configure.log"
default['userappdriver']['driver_projectname']="IDM4_15"
default['userappdriver']['jade_log_file']="/var/opt/novell/idm/delimited_entitlement.log"
default['userappdriver']['jade_projectname']="IDM4_16"
default['userappdriver']['driver_op_commands']="stop"
default['userappdriver']['jade_extra_opencsv_url']="http://164.99.178.154/Jade_for_vagrant/opencsv-2.1.jar"
default['userappdriver']['jade_extra_initidm_url']="http://164.99.178.154/Jade_for_vagrant/init-idm-resources.jar"
default['userappdriver']['jade_base_pkg_url']="http://blr-builder.labs.blr.novell.com/artifacts/designer_updatesite2/4.0/Publish2/plugins/NOVLDTXTBASE_2.1.0.20130801170531.jar"
default['userappdriver']['jade_entit_pkg_url']="http://blr-builder.labs.blr.novell.com/artifacts/designer_updatesite2/4.0/Publish2/plugins/NOVLDTXTENT_2.1.0.20130801170845.jar"
default['userappdriver']['jade_adv_driverset_pkg_url']="http://blr-builder.labs.blr.novell.com/artifacts/designer_updatesite2/4.0/Publish2/plugins/NOVLACOMSET_2.1.0.20130702145909.jar"
default['userappdriver']['ldap_clear_port'] = "389"
default['userappdriver']['ldap_ssl_port'] = "636"
default['userappdriver']['ldap_server_ip'] = "127.0.0.1"
default['userappdriver']['ldap_user_name'] = "cn=admin,ou=servers,o=system"
default['userappdriver']['ldap_password'] = "novell123$"
