require 'bookmark_class'

describe Bookmark do

  it 'should display the urls of the bookmarks' do
    bookmark = Bookmark.all
    expect(bookmark).to include "http://www.makersacademy.com"
  end

end
