feature "homepage" do
  scenario "homepage displays'hello world'" do
    visit '/'
    expect(page).to have_content("hello world")
  end
end
