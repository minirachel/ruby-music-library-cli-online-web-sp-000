require 'pry'

class Artist

    attr_accessor :name, :songs

    extend Findable
    extend Persistable::ClassMethods
    include Persistable::InstanceMethods
    extend Nameable::ClassMethods

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end


    def songs
        Song.all.select {|s| s.artist == self}
    end

    def add_song(song)
        if Song.find_by_name(name) == nil
            song.artist = self
            #assign current artist to song
            #add song to artist's collection
        else
            nil
        end

    end

end