require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before(:each) do
    assign(:group, Group.create!(
                     name: 'Name',
                     icon: '',
                     user: nil,
                     entity: nil
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
