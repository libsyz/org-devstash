class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :web_url
      t.string :description
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
