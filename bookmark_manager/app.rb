require "sinatra"
require './lib/bookmark_class'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb(:bookmark_list)
  end


  run! if app_file == $0
end