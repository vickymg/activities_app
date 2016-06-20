require 'rails_helper'


feature 'members' do

  before do
    Member.create(name: 'James Smith')
    Member.create(name: 'Ellen Jones')
    Member.create(name: 'Sam Walker')
  end

  context 'view all members plus their activities' do
    scenario 'should display a list of members and activities' do
      visit '/members'
      expect(page).to have_link 'James Smith'
    end
  end

  context 'view an individual member page' do
    scenario 'should display the member profile page' do
      visit '/members'
      click_link 'James Smith'
      expect(page).to have_content("James Smith - Profile Page")
    end
  end
end
