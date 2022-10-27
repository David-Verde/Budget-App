require 'rails_helper'

RSpec.describe 'payments/edit', type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
                                  name: 'MyString',
                                  amount: 1.5,
                                  user: nil,
                                  category: nil
                                ))
  end
end
