# Encoding: utf-8
require 'rails_helper'

describe 'application/_donations.html.haml' do

  before do
    render
  end

  it 'should tell people to bring donations' do
    expect(rendered).to match(/Donations of food & cash accepted for the Leduc Food Bank/)
  end

end


