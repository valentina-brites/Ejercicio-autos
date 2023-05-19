require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Car, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:brand) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:price) }
  end

  describe do 'validationCars'
    let(:car) { create(:car) }
    it "is valid with valid attributes" do 
      expect(car).to be_valid 
    end 
  
  RSpec.describe Car, type: :model do 
  let(:car) { create(:car) }
  it "is valid with valid attributes" do 
    expect(car).to be_valid 
  end 
it "is not valid without an brand" do 
  car.brand = nil 
  expect(car).not_to be_valid 
  end 
it "is not valid without a model" do 
  car.model = nil 
  expect(car).not_to be_valid 
  end 
it "is not valid without a price" do 
  car.price = nil 
  expect(car).not_to be_valid 
  end 
end
