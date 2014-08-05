# Encoding: utf-8
require 'rails_helper'

describe 'application/_donations.html.haml' do

  before do
    create(:snippet,
      slug: 'donations',
      content: 'Donations of food & cash accepted for the Leduc Food Bank'
    )
    render
  end

  it 'should tell people to bring donations' do
    expect(rendered).to include('Donations of food &amp; cash accepted for the Leduc Food Bank')
  end

end
