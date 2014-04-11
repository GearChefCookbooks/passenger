name             'passenger'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures passenger'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

#test 43

depends "apt", "2.3.8"
depends "build-essential", "2.0.0"
depends "nginx", "2.4.4"
depends "bluepill", "2.3.1"
depends "rsyslog", "1.12.2"
depends "ohai", "1.1.12"
depends "runit", "1.5.10"
depends "yum", "3.1.4"
depends "yum-epel", "0.3.4"
depends "java", "1.20.0"
depends "chef_gem", "0.1.0"

#In Berksfile 
depends "ruby_build"
depends "rvm", "0.9.1" 
