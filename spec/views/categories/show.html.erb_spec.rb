require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
                                    name: 'Name',
                                    icon: 'Icon',
                                    user: nil
                                  ))
  end

  
end
