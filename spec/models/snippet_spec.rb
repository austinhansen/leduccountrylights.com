require 'rails_helper'

describe Snippet, type: :model do
  context 'validations' do
    it { should validate_uniqueness_of :slug }
    it { should ensure_length_of(:slug).is_at_least(4).is_at_most(32) }
    it { should ensure_length_of(:description).is_at_least(4).is_at_most(32) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:html_cache) }
  end

  context 'database' do
    it { should have_db_index(:slug) }
  end

  context 'factories' do
    it 'should have a valid factory' do
      snippet = build :snippet
      expect(snippet).to be_valid
      snippet.save!
    end
  end
end
