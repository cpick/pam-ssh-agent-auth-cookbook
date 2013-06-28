#
# Cookbook Name:: pam-ssh-agent-auth
# Recipe:: default
#
# Copyright 2013, Chris Pick
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

include_recipe 'apt'

apt_repository 'cpick-pam-ssh-agent-auth' do
    uri 'http://ppa.launchpad.net/cpick/pam-ssh-agent-auth/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key '9A7B416C'
end

package 'pam-ssh-agent-auth'

cookbook_file '/etc/pam.d/sudo' do
    owner 'root'
    group 'root'
    mode 00644
end

cookbook_file '/etc/sudoers.d/pam-ssh-agent-auth' do
    owner 'root'
    group 'root'
    mode 00440
end

ssh_authorized_keys = node[:pam_ssh_agent_auth][:keys].join('\n') + '\n'
file '/etc/security/authorized_keys' do
    owner 'root'
    group 'root'
    mode 00600
    content ssh_authorized_keys
    action :create_if_missing
end
