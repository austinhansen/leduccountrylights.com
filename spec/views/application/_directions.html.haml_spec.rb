# Encoding: utf-8
require 'rails_helper'

describe 'application/_directions.html.haml' do

  before do
    render
  end

  it 'should have the address information' do
    expect(rendered).to match(/Range Road 260 Township Road 492/)
  end

  it 'should include a google maps link' do
    expect(rendered).to match(/TODO: Google Maps JavaScript/)
  end

end
