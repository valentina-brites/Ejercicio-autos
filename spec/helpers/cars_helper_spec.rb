require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CarsHelper. For example:
#
# describe CarsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CarsHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
