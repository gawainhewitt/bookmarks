require 'pg'

p "setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end
