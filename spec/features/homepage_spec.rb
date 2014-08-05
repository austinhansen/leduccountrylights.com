# Encoding: utf-8
require 'rails_helper'

feature 'Homepage' do

  before do
    create(:snippet, slug: 'countdown')
    create(:snippet, slug: 'gallery')
    visit root_url
  end

  scenario 'Should have a schedule of dates' do
    expect(page).to have_selector('#schedule')
  end

  scenario 'Should have information about donations' do
    expect(page).to have_selector('#schedule')
  end

  scenario 'Should have the directions' do
    expect(page).to have_selector('#directions')
  end

  scenario 'Should have a google map' do
    expect(page).to have_selector('#directions .map')
  end

  scenario 'Should have a image gallery' do
    expect(page).to have_selector('#photos')
  end

  scenario 'Should have information on volunteers' do
    expect(page).to have_selector('#volunteers')
  end

end
