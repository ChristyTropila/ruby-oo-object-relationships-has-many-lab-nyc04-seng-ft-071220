class Post

    attr_accessor :title, :author

    @@all=[]

    def initialize(title_arg)
        @title=title_arg
        @@all<<self

    end

    def self.all
        @@all
    end



    def author_name
        author.name if author
  
      end


end