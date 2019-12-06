require 'bookmark_class'

describe Bookmark do
  describe ".all" do
    it 'should displays a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      # empty_db(connection)

      Bookmark.create(url: 'http://www.makersacademy.com', title: "makers")
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: "destroyallsoftware")
      Bookmark.create(url: 'http://www.google.com', title: "google")

      bookmarks = Bookmark.all

      expect(bookmarks.first.title).to eq("makers")
      expect(bookmarks.last.url).to eq('http://www.google.com')
      expect(bookmarks.last.title).to eq('google')
    end
  end

  describe ".create" do
    it "should display the google url when 'https://www.google.com' is passed" do
      Bookmark.create(url: 'http://www.google.com', title: 'google')
      expect(Bookmark.all.first.title).to eq "google"
    end
  end

end
