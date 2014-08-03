# Encoding: utf-8
require 'rails_helper'

describe 'application/_volunteers.html.haml' do

  before do
    render
  end

  it 'should have Doug Ruel as a contact' do
    expect(rendered).to match(/Doug Ruel/)
  end

  it 'should traffic control, hot chocolate servers' do
    expect(rendered).to match(/traffic control, hot chocolate servers/)
  end

end


