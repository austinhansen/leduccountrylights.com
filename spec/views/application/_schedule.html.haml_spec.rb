# Encoding: utf-8
require 'rails_helper'

describe 'application/_schedule.html.haml' do

  before do
    render
  end

  it 'should have hours' do
    expect(rendered).to match(/5:00pm - 9:00pm/)
  end

  it 'should tell people it is open 7 dasy a week' do
    expect(rendered).to match(/Open 7 Days A Week/)
  end

  it 'should tell the date range that the lights are open' do
    expect(rendered).to match(/November 28, 2014 - January 4, 2015/)
  end

end
