class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end



  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
      new_title = Post.new
      add_post(new_title)
  end
end
