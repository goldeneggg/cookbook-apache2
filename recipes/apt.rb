service "#{node['apache2']['apt']['service_name']}" do
    action :nothing
end

package "#{node['apache2']['apt']['package_name']}" do
    action :install
    notifies :restart, "service[#{node['apache2']['apt']['service_name']}]", :delayed
end
