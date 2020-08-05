class Song

    attr_accessor :name, :artist

    @@all=[]


    def initialize(name_arg)
        @name=name_arg
        @@all << self
    end

    def self.all
        @@all
    end


    def artist_name
      artist.name if artist

    end

end
 