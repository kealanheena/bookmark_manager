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

      expect(bookmarks[0]).to include("makers")
      expect(bookmarks[1]).to include('destroyallsoftware')
      expect(bookmarks[2]).to include('google')
    end
  end

  describe ".create" do
    it "should display the google url when 'https://www.google.com' is passed" do
      Bookmark.create(url: 'http://www.google.com', title: 'google')
      p Bookmark.all
      expect(Bookmark.all[0]).to include("google")
    end
  end

end
