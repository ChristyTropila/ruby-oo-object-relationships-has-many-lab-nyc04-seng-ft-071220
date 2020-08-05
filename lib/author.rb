class Author

    attr_accessor :name

    @@all_authors=[]


    def initialize(name_arg)
        @name = name_arg
        @@all_authors << self
    end


    def self.all
        @@all_authors
    end

    
  def posts
    Post.all.select {|post| post.author == self}
  end


   def add_post(post)
    post.author=self
   end

   def add_post_by_title(title)
    post = Post.new(title)
    post.author=self
   end

   def self.post_count
    Post.all.count
   end




end