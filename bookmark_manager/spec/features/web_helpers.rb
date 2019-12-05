def empty_db(database)
  database.exec("TRUNCATE TABLE bookmarks")
end

def add_db
  bookmarkdb = PG.connect(dbname: 'bookmark_manager_test')
  bookmarkdb.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com')") do |result|
  end
end