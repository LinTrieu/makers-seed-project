require 'pg'

task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE message_board;')

  connection = PG.connect :dbname => 'message_board';
  connection.exec('CREATE TABLE posts (id SERIAL PRIMARY KEY, author VARCHAR(20), title VARCHAR(80), content NCHAR(4000));')
end

task :seed_db do
  connection = PG.connect :dbname => 'message_board';
  connection.exec ('TRUNCATE TABLE posts;')
  connection.exec ("INSERT INTO posts VALUES (1, 'Sam', 'First Post', 'This is my first post');")
  connection.exec ("INSERT INTO posts VALUES (2, 'Lucy', 'Another Post', 'This is another post');")

end
