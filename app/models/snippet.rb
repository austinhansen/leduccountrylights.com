# Editable piece of text
class Snippet < ActiveRecord::Base
  validates :slug, {
    presence: true,
    uniqueness: true,
    length: { in: 4..32 }
  }
  validates :description, {
    presence: true,
    length: { in: 4..32 }
  }
  validates :content, {
    presence: true
  }
  validates :html_cache, {
    presence: true
  }
end
