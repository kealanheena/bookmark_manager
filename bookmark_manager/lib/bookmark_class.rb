require 'pg'

class Bookmark

  # def initialize

  # end


  def self.all
    @list = []
    bookmarkdb = PG.connect(dbname: 'bookmark_manager')
    bookmarkdb.exec("SELECT * FROM bookmarks") do |result|
      result.each do |row|
        @list << row.values_at('url', 'id')
      end
    end
    @list
  end
end
