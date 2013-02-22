Description
===========

Installs and configures OpenDJ 2.5.0
OpenDJ - open source LDAP directory services in Java.
[Forgerock OpenDJ](http://opendj.forgerock.org)

Where can this be used ?
============

When you have a needed to use LDAP server. Used along with `tomcat_openam` cookbook. The `tomcat_openam` cookbook
stands up a cloud identity for development and test purposes. It can be used to evaluate the OpenAM product to explore cloud identity.
At that point, you will need a compatible LDAP server, which is OpenDJ.

Requirements
============

Platform:

* Debian, Ubuntu (OpenJDK)

The following Opscode cookbooks are dependencies:

* apt
* java

Attributes
==========
[OpenDJ Configuration](http://opendj.forgerock.org/doc/install-guide/index.html)
* 'node["opendj"]["source"]' - The source file of opendj.zip, default 'https://s3-ap-southeast-1.amazonaws.com/megam/chef/opendj/opendj.zip'
* 'node["opendj"]["cmd"]["config"]' - The command to configure OpenDJ
* 'node["opendj"]["arg-val"]["baseDN"]' - LDAP BaseDN value, default "dc=example,dc=com"
* 'node["opendj"]["arg-val"]["rootUserDN"]' - LDAP root userDN, default "cn=Directory Manager"
* 'node["opendj"]["arg-val"]["rootUserPassword"]' - LDAP root user password, default "secret12"
* 'node["opendj"]["arg-val"]["ldapPort"]' - LDAP port value, default 1389

Usage
=====

Simply include the recipe where you want OpenDj installed. This run a single instance.
An example for a opendj role:

    name "opendj"
    run_list "recipe[apt]", "recipe[opendj::single_instance]"

TO-DO
=====

* Clustered/Highly Available/Scalable OpenDJ
* Cloud based automated consumption of cloud identity

License and Author
==================

Author:: Kishore Kumar (<nkishore@megam.co.in>)
Author:: Thomas Alrin (<alrin@megam.co.in>)

Copyright:: 2013, Megam Systems

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
