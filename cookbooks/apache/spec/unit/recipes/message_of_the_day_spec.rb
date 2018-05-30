require 'spec_helper'

describe 'apache::message_of_the_day' do
  context 'When all attributes are default, on an Redhat 7.3' do
    
    include_context 'Default Server Runner'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'create the motd file under /etc folder' do
      expect(chef_run).to create_template('/etc/motd')
    end
  end
end
