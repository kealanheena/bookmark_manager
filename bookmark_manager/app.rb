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

  post '/form' do
    url = params[:url]
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end


  run! if app_file == $0
end
