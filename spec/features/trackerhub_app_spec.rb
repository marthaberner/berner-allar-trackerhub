require 'spec_helper'

feature 'Managing Tracker and Github' do
  scenario 'User can view all projects' do

    visit '/'

    click_on 'View Projects'
    expect(page).to have_content ('GiftHorse')
    expect(page).to have_content ('Sample Project')
  end
end