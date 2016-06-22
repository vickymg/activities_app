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

    before do
      click_link 'James Smith'
      click_link 'Add activity'
      select 'Running', :from => 'activity_name'
      fill_in :activity_description, with: 'Ran 26 miles'
      click_button 'Add activity'
    end

    scenario 'allows users to add an activity on their page' do
       expect(page).to have_content('Running')
       expect(page).to have_content('Ran 26 miles')
    end

    scenario 'type of activity added appears on main members page' do
      click_link 'Back to members'
      expect(page).to have_content('Running')
    end
  end


end
