# Encoding: utf-8
require 'rails_helper'

feature 'Homepage' do

  before do
    visit root_url
  end

  scenario 'Should have a schedule of dates' do
    expect(page).to have_text('TODO: Schedule')
  end

  scenario 'Should have information about donations' do
    expect(page).to have_text('TODO: Donation Information')
  end

  scenario 'Should have the directions' do
    expect(page).to have_text('Range Road 492')
  end

  scenario 'Should have a google map' do
    expect(page).to have_text('TODO: Google Maps JavaScript')
  end

  scenario 'Should have a image gallery' do
    expect(page).to have_text('TODO: Image Gallery')
  end

  scenario 'Should have information on volunteers' do
    expect(page).to have_text('TODO: Volunteer information')
  end

end
