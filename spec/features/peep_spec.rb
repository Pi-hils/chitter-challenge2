
feature '.create' do
  scenario 'person creates peep' do
    visit '/peep' 
    within 'form' do
    fill_in "peep post",	with: "my first peep"
    end
    click_button 'Post'
    expect(page).to have_content('my first peep')
    end
  end