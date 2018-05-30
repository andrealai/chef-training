require 'spec_helper'

describe 'apache::server' do
  context 'When all attributes are default, on an Redhat 7.3' do

    include_context 'Default Server Runner'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the apache package' do
      expect(chef_run).to install_package('httpd')
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
