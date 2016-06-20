require 'rails_helper'

feature 'add members' do
  context 'no members have been added' do
    scenario 'should display a prompt to add a member' do
      visit '/admin'
      expect(page).to have_content 'No members have been added yet.'
      expect(page).to have_link 'Add a new member'
    end
  end

  context 'members have been added' do
    before do
      Member.create(name: 'James Smith')
    end

    scenario 'display members' do
      visit '/admin'
      expect(page).to have_content('James Smith')
      expect(page).not_to have_content('No members have been added yet.')
    end
  end
end
