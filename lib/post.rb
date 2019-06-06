class Post
  attr_reader :author, :title, :content

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM posts;')
    result.map{ |post| Post.new(post['author'], post['title'], post['content']) }
  end
end
