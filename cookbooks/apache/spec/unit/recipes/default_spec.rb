require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an Redhat 7.3' do
    
    include_context 'Default Server Runner'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes server recipe' do
      expect(chef_run).to include_recipe ('apache::server')
    end

    it 'includes the message of the day recipe' do
      expect(chef_run).to include_recipe('apache::message_of_the_day')
    end
  end
end
