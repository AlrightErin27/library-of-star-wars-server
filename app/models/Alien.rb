class Alien < ActiveRecord::Base
    belongs_to :pets
    belongs_to :user
end