class Character < ActiveRecord::Base
    attr_accessor :catchphrase

    belongs_to :actor
    belongs_to :show

    def catchphrase

    end

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

end