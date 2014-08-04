# Rubocop: disable Documentation
class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.timestamps
      t.string :slug, limit: 32, default: nil, allow_null: false
      t.string :description, limit: 64, default: nil, allow_null: false
      t.text   :content, default: nil, allow_null: false
      t.text   :html_cache, default: nil, allow_null: false
    end

    add_index :snippets, :slug, unique: true
  end
end
