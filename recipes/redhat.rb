#
# Cookbook:: nxlog
# Recipe:: default
#
# Copyright:: (C) 2014 Simon Detheridge
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

package 'apr'
package 'libdbi'
package 'perl'

rv = if node['platform_version'].to_f < 7
       6
     else
       7
     end

package_name = "nxlog-ce-#{node['nxlog']['version']}-1_rhel#{rv}.x86_64.rpm"

node.default['nxlog']['installer_package'] = package_name
