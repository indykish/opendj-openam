name 		 "opendj"
maintainer       "Megam Syaytems"
maintainer_email "alrin@megam.co.in"
license          "Apache 2.0"
description      "Installs/Configures opendj"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ java }.each do |cb|
  depends cb
end

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end

recipe "opendj::single_instance", "Installs and configures OpenDJ"
