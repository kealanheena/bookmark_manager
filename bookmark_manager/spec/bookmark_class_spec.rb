require 'bookmark_class'

describe Bookmark do

  it "displays a array of hard-coded Bookmark instances" do
    expect(Bookmark.all).to eq([])
  end

end
