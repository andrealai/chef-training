require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start!
RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
  config.log_level = :error
  config.tty = true
end