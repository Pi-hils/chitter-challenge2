require 'spec_helper'

feature 'homepage' do
  scenario 'Start a peep with chitter' do
    visit('/chitter')

    expect(page).to have_content("post 1")
    expect(page).to have_content("post 2")
    expect(page).to have_content("post 3") 
  end

end
