feature "homepage" do
  scenario "homepage displays'hello world'" do
    visit '/'
    expect(page).to have_content("hello world")
  end
end

feature 'Screams abuse at you after submiting bookmark' do
 scenario 'It calls you a nerd after submiting underwhelmingly dull bookmark' do
   visit '/'
   # fill_in('name', with: 'bing')
   # fill_in ('url, :with => 'https://www.bing.com'
   click_button('submit')
   expect(page). to have_content("Nerd.")
  end
 end
