class AddLogoPathToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :logo_path, :string
  end
end
