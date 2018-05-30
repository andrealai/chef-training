require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an Redhat 7.3' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'redhat', version: '7.3')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes server recipe' do
      expect(chef_run).to include_recipe ('apache::server')
    end

    it 'creates the index.html file' do
      expect(chef_run).to create_template('/var/www/html/index.html')
    end

   it 'starts and enables to apache service' do
     expect(chef_run).to enable_service('httpd')
     expect(chef_run).to start_service('httpd')
   end
  end
end
