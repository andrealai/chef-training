template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
  owner 'root'
  group 'root'
  variables({
      IPADDRESS: node['ipaddress'],
      HOSTNAME: node['hostname'],
      MEMORY: node['memory']['total'],
      CPU: node['cpu']['0']['mhz']
    })
end
