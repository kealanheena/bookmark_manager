require "pg"

feature "Bookmark page" do
  scenario " display 'bookmarks' on the page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmark List")
  end

  scenario "A user can see bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit("/bookmarks")

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end

feature 'Adding bookmark' do
  scenario 'adds created bookmark to bookmark list' do
    url1 = 'https://wwww.bing.com'
    visit '/'
    # fill_in :name, :with => "Shaf"
    fill_in :url, :with => url1
    click_on "submit"
    expect(page). to have_content(url1)
  end
end
