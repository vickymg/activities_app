require 'rails_helper'


feature 'members' do

  before do
    Member.create(name: 'James Smith')
    Member.create(name: 'Ellen Jones')
    Member.create(name: 'Sam Walker')
    visit '/members'
  end

  context 'view all members' do
    scenario 'it should display a list of members' do
      expect(page).to have_link 'James Smith'
      expect(find('ul')).to have_selector('li', count: 3)
    end
  end

  context 'view an individual member page' do
    scenario 'it should display the member profile page' do
      click_link 'James Smith'
      expect(page).to have_content("James Smith - Profile Page")
    end
  end

  context 'add a new activity' do
    scenario 'allows users to add an activity on their page' do
       click_link 'James Smith'
       click_link 'Add activity'
       fill_in 'Description', with: 'Running'
       click_button 'Add activity'
       expect(page).to have_content('Running')
    end
  end


end
