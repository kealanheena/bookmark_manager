require 'bookmark_class'

describe Bookmark do
  describe ".all" do
    it 'should displays a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      # empty_db(connection)

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks[0][0]).to include("http://www.makersacademy.com")
      expect(bookmarks[1][0]).to include('http://www.destroyallsoftware.com')
      expect(bookmarks[2][0]).to include('http://www.google.com')
    end
  end

end
