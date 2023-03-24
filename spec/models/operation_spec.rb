require 'rails_helper'

RSpec.describe Operation, type: :model do
  before(:each) do
    @user = User.create(name: 'User', email: '123@gmail.com', password: '123456', password_confirmation: '123456')
    @group = Group.create(name: 'Food', icon: 'https://www.sliderrevolution.com/wp-content/uploads/2020/02/srlogo.png', user: @user)
    @operation = Operation.create(name: "Veggies", amount: 50, author_id: @user.id)
  end

  describe 'validations' do
    it 'should be valid with valid attributes' do
      expect(@operation).to be_a(Operation)
      expect(@operation).to be_valid
    end

    it 'is valid with a name' do
      @operation.name = 'Veggies'
      expect(@operation).to be_valid
    end
  end

  describe 'associations' do
    it 'has many RecipeFood' do
      assc = described_class.reflect_on_association(:groups)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end

    it 'belongs to User' do
      assc = described_class.reflect_on_association(:author)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
