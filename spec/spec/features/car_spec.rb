require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'User authentication', type: :feature do
    describe 'when logged in' do
        let(:user) { create(:user) }

    before do
     login_as(user, scope: :user)
    end

    it 'displays the cars page' do
        visit cars_path
        expect(page).to have_content('New Car')
    end
 end


    describe 'when not logged in' do
    it 'redirects to the login page' do
        visit cars_path
        expect(page).to have_current_path(new_user_session_path) 
        end
    end
end