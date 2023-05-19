require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Car, type: :model do 
  describe 'validations' do 
    it { should validate_presence_of(:brand) } 
    it { should validate_presence_of(:model) } 
    it { should validate_presence_of(:price) } 
  end 

  describe 'validation_user' do 
    let(:user) { create(:user) } 

    it "is valid with valid attributes" do 
      expect(user).to be_valid 
    end 

    it "is not valid without an email" do 
      user.email = nil 
      expect(user).not_to be_valid 
    end 
    
    it "is not valid without a password" do 
      user.password = nil 
      expect(user).not_to be_valid 
    end 
    
    it "is not valid with a duplicate email" do 
      duplicate_user = build(:user, email: user.email) 
      expect(duplicate_user).not_to be_valid 
      end 
    end
  end