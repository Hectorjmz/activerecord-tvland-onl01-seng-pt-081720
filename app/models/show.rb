class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    #has_many :networks, through: :shows

    def actors_list
        self.actors.collect do |i|
            i.full_name
        end
    end
end