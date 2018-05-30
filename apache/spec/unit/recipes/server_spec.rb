require 'spec_helper'

describe 'apache::server' do
  context 'When all attributes are default, on an Redhat 7.3' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'redhat', version: '7.3')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the apache package' do
      expect(chef_run).to install_package('httpd')
    end
  end
end
