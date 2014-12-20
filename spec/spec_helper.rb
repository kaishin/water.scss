require "rspec"
require "css_parser"
require "aruba/api"
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.include SassSupport
  config.include CssParser
  config.include ParserSupport
  config.include Aruba::Api

  config.before(:all) do
    generate_css
  end

  config.after(:all) do
    clean_up
  end
end
