require 'rails_helper'

feature 'add users' do
  context 'no users have been added' do
    scenario 'should display a prompt to add a user' do
      visit '/admin'
      expect(page).to have_content 'No users have been added yet.'
      expect(page).to have_link 'Add a new user'
    end
  end
end
