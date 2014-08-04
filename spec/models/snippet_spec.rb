require 'rails_helper'

describe Snippet, type: :model do
  context 'validations' do
    it { should validate_uniqueness_of :slug }
    it { should ensure_length_of(:slug).is_at_least(4).is_at_most(32) }
    it { should ensure_length_of(:description).is_at_least(4).is_at_most(32) }
    it { should validate_presence_of(:slug) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:content) }
    # it { should validate_presence_of(:html_cache) }
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

  context '#to_html' do
    it 'should return the content of the snippet' do
      snippet = build :snippet, content: 'test test'
      expect(snippet.to_html).to match('test test')
    end

    it 'should parse textile and convert it to html' do
      snippet = build :snippet,
        content: "h1. Christmas is coming!\n\nh3. Christmas lights are pretty"
      expect(snippet.to_html)
        .to eq("<h1>Christmas is coming!</h1>\n<h3>Christmas lights are pretty</h3>")
    end
  end
end
