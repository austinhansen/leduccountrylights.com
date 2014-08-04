# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :slug do |n|
    "100#{n}"
  end

  factory :snippet do
    slug
    content 'text'
    description 'text'
    html_cache 'text'
  end
end
