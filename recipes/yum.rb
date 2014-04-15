service "#{node['apache2']['yum']['service_name']}" do
    action :nothing
end

package "#{node['apache2']['yum']['package_name']}" do
    action :install
    notifies :restart, "service[#{node['apache2']['yum']['service_name']}]", :delayed
end
