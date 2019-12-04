def empty_db
  bookmarkdb = PG.connect(dbname: 'bookmark_manager_test')
  bookmarkdb.exec("TRUNCATE TABLE bookmarks") do |result|
  end
end

def add_db
  bookmarkdb = PG.connect(dbname: 'bookmark_manager_test')
  bookmarkdb.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com')") do |result|
  end
end