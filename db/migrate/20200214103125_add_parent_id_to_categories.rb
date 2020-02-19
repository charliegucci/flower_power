class AddParentIdToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :types, :parent_id, :integer
  end
end

