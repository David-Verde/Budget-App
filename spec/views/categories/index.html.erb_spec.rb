require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    assign(:categories, [
             Category.create!(
               name: 'Name',
               icon: 'Icon',
               user: nil
             ),
             Category.create!(
               name: 'Name',
               icon: 'Icon',
               user: nil
             )
           ])
  end

  
end
