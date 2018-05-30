require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start!
RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
  config.log_level = :error
  config.tty = true
end

shared_context 'Default Server Runner' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new(platform: 'redhat', version: '7.3') do |node|
      node.automatic['ipaddress'] = '111.222.111.222'
      node.automatic['hostname'] = 'banana'
      node.automatic['memory']['total'] = '3881696kB'
      node.automatic['cpu']['0']['mhz'] = '2807.996'
    end.converge(described_recipe)
  end
end
