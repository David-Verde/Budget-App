require 'rails_helper'

RSpec.describe 'categories/new', type: :view do
  before(:each) do
    assign(:category, Category.new(
                        name: 'MyString',
                        icon: 'MyString',
                        user: nil
                      ))
  end
end
