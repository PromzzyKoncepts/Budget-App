require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before(:each) do
      @user = User.create(name: 'John', email: '123@gmail.com', password: '123456')
      @user1 = User.create(name: nil, email: '123@gmail.com', password: '123456')
    end

    it 'is valid' do
      expect(@user).to be_valid
    end

    it 'is not valid without a name' do
      expect(@user1).to_not be_valid
    end
  end
end
