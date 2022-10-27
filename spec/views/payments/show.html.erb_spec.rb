require 'rails_helper'

RSpec.describe 'payments/show', type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
                                  name: 'Name',
                                  amount: 2.5,
                                  user: nil,
                                  category: nil
                                ))
  end


end
