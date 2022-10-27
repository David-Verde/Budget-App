require 'rails_helper'

RSpec.describe 'payments/index', type: :view do
  before(:each) do
    assign(:payments, [
             Payment.create!(
               name: 'Name',
               amount: 2.5,
               user: nil,
               category: nil
             ),
             Payment.create!(
               name: 'Name',
               amount: 2.5,
               user: nil,
               category: nil
             )
           ])
  end
end
