class CreateShortenedUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :shortened_urls, :long_url, :string, null: false
    add_column :shortened_urls, :short_url, :string, null: false
    add_column :shortened_urls, :user_id, :integer, null: false
    add_index :shortened_urls, [:short_url, :long_url], unique: true
    add_index :shortened_urls, :user_id
  end
end
