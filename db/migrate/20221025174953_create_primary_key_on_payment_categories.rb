class CreatePrimaryKeyOnPaymentCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories_payments, :id, :primary_key

    end
  end

