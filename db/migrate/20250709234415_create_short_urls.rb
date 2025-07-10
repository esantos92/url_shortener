class CreateShortUrls < ActiveRecord::Migration[8.0]
  def change
    create_table :short_urls do |t|
      t.string :original_url
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
