require 'rails_helper'
RSpec.describe 'users index page' do
  it 'shows all users' do
    user_1 = User.create!(name: 'Seth', email: 'email')
    user_2 = User.create!(name: 'kelly', email: 'email3')
    user_3 = User.create!(name: 'john', email: 'email2')
    user_4 = User.create!(name: 'brenda', email: 'email1')
    visit '/users'


    expect(page).to have_link(user_1.name)
    expect(page).to have_link(user_2.name)
    expect(page).to have_link(user_3.name)
    expect(page).to have_link(user_4.name)
    click_link(user_1.name)
    expect(current_path).to eq("/users/#{user_1.id}")
  end
end
