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

execute "Download Userapp Shim jar" do
 user "root" 
 command "wget http://164.99.129.35:8080/jenkins/job/TrunkNightly/lastSuccessfulBuild/artifact/releng/build/distribute/user_app_driver/srvprvUAD.jar -O /opt/novell/eDirectory/lib/dirxml/classes/srvprvUAD.jar"
  action :run
end



execute "Restart the edirectory" do
 user "root" 
 command "/etc/init.d/ndsd restart"
  action :run
end


