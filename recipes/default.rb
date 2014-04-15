#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

install_type = node['apache2']['install_type']
if install_type.empty? then
  install_type = case node['platform_family']
      when "rhel", "fedora"
          "yum"
      when "debian"
          "apt"
      else
          # TODO
          "source"
  end
end

include_recipe "cookbook-apache2::#{install_type}"

execute "change_logdir_permission" do
    user "root"
    command "chmod #{node['apache2']['logdir_permission']} #{node['apache2'][install_type]['logdir']}"
end
