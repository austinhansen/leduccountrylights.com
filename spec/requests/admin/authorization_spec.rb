require 'rails_helper'

describe 'http auth' do
  before do
    create(:snippet, slug: 'countdown')
    create(:snippet, slug: 'gallery')
    create(:snippet, slug: 'donations')
    create(:snippet, slug: 'volunteers')
  end

  it 'should authorize the admin area' do
    get admin_root_url
    expect(response.status).to eq(401)
  end

  it 'should not authorize the homepage' do
    get root_url
    expect(response.status).to eq(200)
  end
end
