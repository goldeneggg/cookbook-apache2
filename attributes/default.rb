default['apache2']['install_type'] = ""

default['apache2']['logdir_permission'] = "755"

default['apache2']['yum']['logdir'] = "/var/log/httpd"
default['apache2']['yum']['package_name'] = "httpd"
default['apache2']['yum']['service_name'] = "httpd"

default['apache2']['apt']['logdir'] = "/var/log/apache2"
default['apache2']['apt']['package_name'] = "apache2"
default['apache2']['apt']['service_name'] = "apache2"

# TODO
default['apache2']['source']['logdir'] = "/var/log/apache2"
default['apache2']['source']['package_name'] = "apache2"
default['apache2']['source']['service_name'] = "apache2"
