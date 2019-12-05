require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    
    @list = []
    result = connection.exec("SELECT * FROM bookmarks")
    result.each { |row| @list << row.values_at('url', 'id') }
    @list
  end

end
