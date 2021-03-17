class Song

    attr_accessor :name, :artist

    attr_reader :song

    extend Findable
    extend Persistable::ClassMethods
    include Persistable::InstanceMethods
    extend Nameable::ClassMethods


    @@all = []

    #mass assignment and metaprogramming for optional value?
    def initialize(name, artist="")
        @name = name
        # self.artist=(artist) if artist
    end

    def self.all
        @@all
    end


    # def artist=(artist)
    #     @artist = artist
    #     # Artist.add_song(self)
    # end

end