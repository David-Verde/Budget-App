require 'rails_helper'

RSpec.describe 'categories/edit', type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
                                    name: 'MyString',
                                    icon: 'MyString',
                                    user: nil
                                  ))
  end


  
end
