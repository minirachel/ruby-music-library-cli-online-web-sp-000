module Nameable
    # # 46:00
    module ClassMethods

        def create(name)
            i = self.new(name)
            i.save
            i
        end

        # def create(name)
        #     self.new.tap do |o|
        #         o.name = name
        #     end
        # end
        # def create(name)
        #     i = self.new
        #     i.name = name
        #     i
        # end
    end

end