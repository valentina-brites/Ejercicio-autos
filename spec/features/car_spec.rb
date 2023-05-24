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

    describe 'Attribute Display Test' do
        before(:each) do
            visit '/cars/new'
            end
            it 'should display the "brand" attribute' do
            expect(page).to have_content ('Marca')
            end

            it 'should display the "model" attribute' do
            expect(page).to have_content ('Modelo')
            end
      
            it 'should display the "price" attribute' do
            expect(page).to have_content ('Precio')
        end
    end
 end
 
    describe 'when not logged in' do
        it 'redirects to the login page' do
        visit cars_path
        expect(page).to have_current_path(new_user_session_path) 
        end
    end
end