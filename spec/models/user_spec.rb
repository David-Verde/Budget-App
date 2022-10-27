require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Dino', email: 'dino@mail.com', password: '123456')
    @user.skip_confirmation!
    @user.save
  end

  it 'Should has a valid value' do
    expect(@user).to be_valid
    @user.name = nil
    expect(@user).not_to be_valid
  end
end