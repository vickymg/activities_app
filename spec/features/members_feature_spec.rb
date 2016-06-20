require 'rails_helper'


feature 'view all members plus their activities' do

  before do
    Member.create(name: 'James Smith')
    Member.create(name: 'Ellen Jones')
    Member.create(name: 'Sam Walker')
  end
  
  scenario 'should display a list of members and activities' do
    visit '/members'
    expect(page).to have_content 'James Smith'
  end
end
