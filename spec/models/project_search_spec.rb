require 'spec_helper'

feature 'Tracker Projects' do
  scenario 'Lists all tracker projects' do
    repo = ProjectSearch.new
    projects = repo.search

    expect(projects).to include('GiftHorse')
    expect(projects).to include('Sample Project')
  end
end