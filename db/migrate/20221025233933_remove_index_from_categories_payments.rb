class RemoveIndexFromCategoriesPayments < ActiveRecord::Migration[7.0]
  def change
    remove_index :categories_payments, name: 'index_categories_payments_on_category_id_and_payment_id'
    remove_index :categories_payments, name: 'index_categories_payments_on_payment_id_and_category_id'
  end
end
