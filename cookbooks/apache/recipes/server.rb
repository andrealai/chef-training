package 'httpd'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  variables ({
      IPADDRESS: node['ipaddress'],
      HOSTNAME: node['hostname'],
      MEMORY: node['memory']['total'],
      CPU: node['cpu']['0']['mhz']
  })
end

service 'httpd' do
  action [:enable, :start]
end