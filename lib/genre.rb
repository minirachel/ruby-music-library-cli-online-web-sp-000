class Genre
    
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


end