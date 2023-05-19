require 'rails_helper' 
require 'factory_bot' 

RSpec.describe User, type: :model do 
  describe 'validations' do 
    it { should validate_presence_of(:email) } 
    it { should validate_length_of(:password).is_at_least(6) } 
  end 

  describe 'validation_user' do 
    let(:user) { FactoryBot.create(:user) } 

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
      duplicate_user = FactoryBot.build(:user, email: user.email) 
      expect(duplicate_user).not_to be_valid 
    end 
  end 
end