require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.new(name: 'David', email: 'david.verde@gmail.com', password: '123456')
    @user.skip_confirmation!
    @user.save
    @category = Category.create(name: 'utilities', icon: 'icon1.png', user: @user)
    @payment = @category.payments.create(name: 'grape', amount: 20, user: @user)
  end
end
