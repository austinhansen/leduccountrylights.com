# Encoding: utf-8
require 'rails_helper'

describe 'application/_volunteers.html.haml' do

  before do
    create(:snippet,
      slug: 'volunteers',
      content: "They would like volunteers (traffic control, hot chocolate servers),
        those interested please phone Doug Ruel\n\n780-777-4122"
    )
    render
  end

  it 'should have Doug Ruel as a contact' do
    expect(rendered).to match(/Doug Ruel/)
  end

  it 'should traffic control, hot chocolate servers' do
    expect(rendered).to match(/traffic control, hot chocolate servers/)
  end

end
