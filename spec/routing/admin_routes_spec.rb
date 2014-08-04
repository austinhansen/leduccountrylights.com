require 'rails_helper'

describe 'routing to /admin' do
  it 'routes /admin to admin_snippets#index' do
    expect(get: '/admin').to route_to(
      controller: 'admin/snippets',
      action: 'index'
    )
  end
end
