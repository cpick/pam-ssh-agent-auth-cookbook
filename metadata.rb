name             'pam-ssh-agent-auth'
maintainer       'Chris Pick'
maintainer_email 'cookbooks@chrispick.com'
license          'Apache 2.0'
description      'Installs/Configures pam-ssh-agent-auth'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'apt'
supports         'ubuntu', '= 12.04'

recipe 'pam-ssh-agent-auth', 'Installs and enables pam_ssh_agent_auth'

attribute 'pam-ssh-agent-auth/keys',
  :display_name => 'Authorized Keys',
  :description => 'Authorized keys to accept when sudo is authenticating via the ssh-agent',
  :type => 'array'
