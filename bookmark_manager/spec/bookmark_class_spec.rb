require 'bookmark_class'

describe Bookmark do
  describe ".all" do
    it 'should displays a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      # empty_db(connection)

      Bookmark.create(url: 'http://www.makersacademy.com')
      Bookmark.create(url: 'http://www.destroyallsoftware.com')
      Bookmark.create(url: 'http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks[0]).to include("http://www.makersacademy.com")
      expect(bookmarks[1]).to include('http://www.destroyallsoftware.com')
      expect(bookmarks[2]).to include('http://www.google.com')
    end
  end

  describe ".create" do
    it "should display the bing url when 'https://www.bing.com' is passed" do
      Bookmark.create(url: 'http://www.google.com')
      p Bookmark.all
      expect(Bookmark.all[0]).to include('http://www.google.com')
    end
  end

end
