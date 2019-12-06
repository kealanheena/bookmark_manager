require "pg"

feature "Bookmark page" do
  scenario " display 'bookmarks' on the page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmark List")
  end

  scenario "A user can see bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'makers');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'destroyallsoftware');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'google');")

    visit("/bookmarks")

    expect(page).to have_content "makers"
    expect(page).to have_content "destroyallsoftware"
    expect(page).to have_content "google"
  end
end

feature 'Adding bookmark' do
  scenario 'adds created bookmark to bookmark list' do
    visit '/'
    fill_in :title, :with => "bing"
    fill_in :url, :with => 'https://wwww.bing.com'
    click_on "submit"
    expect(page).to have_content('bing')
  end
end
