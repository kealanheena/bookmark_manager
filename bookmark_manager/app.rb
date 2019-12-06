require "sinatra"
require './lib/bookmark_class'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    p @bookmark_list
    erb(:bookmark_list)
  end

  post '/form' do
    Bookmark.create(url: params['url'], title: params['title'])
    redirect '/bookmarks'
  end


  run! if app_file == $0
end
