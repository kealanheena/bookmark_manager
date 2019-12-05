require "pg"

p "Setting up test database..."

connection = PG.connection(database: 'bookmark_manager_test')

connection.exec("TRUNCATE bookmarks;")
