require 'pg'

class Bookmark

  # def initialize

  # end


  def self.all(database = 'bookmark_manager')
    @list = []
    bookmarkdb = PG.connect(dbname: database)
    bookmarkdb.exec("SELECT * FROM bookmarks") do |result|
      result.each do |row|
        @list << row.values_at('url', 'id')
      end
    end
    @list
  end
end
