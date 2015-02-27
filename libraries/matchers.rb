#
# Cookbook Name:: nxlog_ce
# Provider:: log_destination
#
# Copyright (C) 2014 Simon Detheridge
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

if defined? ChefSpec
  def create_nxlog_ce_destination(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(
      'nxlog_ce_destination', 'create', resource_name)
  end

  def create_nxlog_ce_source(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(
      'nxlog_ce_source', 'create', resource_name)
  end
end
