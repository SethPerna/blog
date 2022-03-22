require 'rails_helper'
RSpec.describe 'users index page' do
  it 'shows all users' do
    user_1 = User.create!(name: 'Seth', email: 'email')
    user_2 = User.create!(name: 'kelly', email: 'email3')

    visit "/users/#{user_1.id}"


    expect(page).to have_content(user_1.name)
    expect(page).to have_content(user_1.email)
    expect(page).to_not have_content(user_2.name)
    expect(page).to_not have_content(user_2.email)
  end
end
