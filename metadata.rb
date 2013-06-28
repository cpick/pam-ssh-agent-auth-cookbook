name             'pam-ssh-agent-auth'
maintainer       'Chris Pick'
maintainer_email 'cookbooks@chrispick.com'
license          'Apache 2.0'
description      'Installs/Configures pam-ssh-agent-auth'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'apt'
supports         'ubuntu', '= 12.04'
