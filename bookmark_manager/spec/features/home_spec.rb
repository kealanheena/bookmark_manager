feature "homepage" do
  scenario "homepage displays'hello world'" do
    visit '/'
    expect(page).to have_content("hello world")
  end
end

feature 'Screams abuse at you after submiting bookmark' do
 scenario 'It calls you a nerd after submiting underwhelmingly dull bookmark' do
   visit '/'
   # fill_in :name, :with => "Nerd."
   fill_in :url, :with => "https://www.Nerd.co.uk"
   click_on "submit"
   expect(page). to have_content("Nerd.")
  end
 end
