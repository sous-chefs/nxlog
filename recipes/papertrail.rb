#
# Cookbook:: nxlog
# Recipe:: papertrail
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

include_recipe 'sc-nxlog::default'

directory File.join(node['nxlog']['conf_dir'], 'certs')

remote_file File.join(node['nxlog']['conf_dir'],
                      'certs', 'papertrail-bundle.pem') do
  source node['nxlog']['papertrail']['bundle_url']
end
