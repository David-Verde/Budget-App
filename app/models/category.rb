class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_and_belongs_to_many :payments

  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true

  def total_amount_category
  total = 0
  payments.each { |payment| total += payment.amount }
  total
  end


  




end
