package 'httpd' do
  action :install
end


directory node['site_path'] do
  owner 'apache'
  group 'apache'
  mode '0755'
  recursive true
end

directory node['logs'] do
  recursive true
end

template node['httpd_conf'] do
  source "httpd.conf.erb"
end

service 'httpd' do
  action [:enable, :start]
end
