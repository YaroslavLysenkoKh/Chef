
%w{mariadb mariadb-server}.each do |pkg|
  package pkg do
    action :install
  end
end


service 'mariadb' do
  action [:enable, :start]
end

template '/tmp/mysql.sql' do
  source "mysql.conf.erb"
end

execute 'mysql_server' do
  command '/usr/bin/mysql -sfu root < /tmp/mysql.sql && ls /tmp/mysql.sql'
  ignore_failure true
end
