feature "Bookmark page" do
  scenario " display 'bookmarks' on the page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmark list")
  end
end
