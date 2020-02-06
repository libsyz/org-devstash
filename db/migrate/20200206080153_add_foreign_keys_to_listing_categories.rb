class AddForeignKeysToListingCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :listing_categories, :category, foreign_key: true
    add_reference :listing_categories, :listing, foreign_key: true
  end
end
