require "sinatra"
require './lib/bookmark_class'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    # p ENV
    @bookmark_list = Bookmark.all
    erb(:bookmark_list)
  end

  get '/form' do
    erb :form
    # "Nerd."
  end


  run! if app_file == $0
end
