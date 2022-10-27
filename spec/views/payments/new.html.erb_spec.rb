require 'rails_helper'

RSpec.describe 'payments/new', type: :view do
  before(:each) do
    assign(:payment, Payment.new(
                       name: 'MyString',
                       amount: 1.5,
                       user: nil,
                       category: nil
                     ))
  end

  
end
