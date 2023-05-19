# spec/factory_bot_rails.rb
RSpec.configure do |config| 
config.include FactoryBot::Syntax::Methods 

config.before(:suite) do 
    FactoryBot.find_definitions 
    end
end