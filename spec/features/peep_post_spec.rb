
feature 'log in' do
  scenario 'person sign in form' do
    visit '/'
    within 'form' do
    fill_in "First Name",	with: "Hilda" 
    fill_in "Last Name", with: "Amponsah"
    fill_in "Email", with: "hilda.amp@hotmail.com"
  end
    click_button 'Sign In'
    expect(page).to have_content('User was successfully created')
   end
  end