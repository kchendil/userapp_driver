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


execute "Download UserApp Base package" do
 user "root" 
 command "wget -H -r --level=1 -nd -np -A \"NOVLUABASE*.jar\" -P /tmp/plugins http://blr-builder.labs.blr.novell.com/artifacts/designer_updatesite2/4.0/Publish2/plugins/"
  action :run
end


# execute "Download Userapp Shim jar" do
 # user "root" 
 # command "wget http://164.99.129.35:8080/jenkins/job/TrunkNightly/lastSuccessfulBuild/artifact/releng/build/distribute/user_app_driver/srvprvUAD.jar -O /opt/novell/eDirectory/lib/dirxml/classes/srvprvUAD.jar"
  # action :run
# end


# execute "Download R&R Base Package" do
 # user "root" 
 # command "wget -H -r --level=1 -nd -np -A "*UABASE*.jar" -P /tmp/plugins http://blr-builder.labs.blr.novell.com/artifacts/designer_updatesite2/4.0/Publish2/plugins/"
  # action :run
# end

# execute "Download R&R Shim Jar" do
 # user "root" 
 # command "wget http://164.99.129.35:8080/jenkins/job/TrunkNightly/lastSuccessfulBuild/artifact/releng/build/distribute/user_app_driver/nrfdriver.jar -O /opt/novell/eDirectory/lib/dirxml/classes/nrfdriver.jar"
  # action :run
# end


