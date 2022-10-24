class RemoveIndex < ActiveRecord::Migration[7.0]
  def change
    remove_index :payments, :category_id
  end
end
