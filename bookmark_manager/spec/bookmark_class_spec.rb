require 'bookmark_class'

describe Bookmark do

  it 'should display the urls of the bookmarks' do
    empty_db
    add_db
    bookmark = Bookmark.all('bookmark_manager_test')
    expect(bookmark[0][0]).to include "http://www.makersacademy.com"
  end

end
