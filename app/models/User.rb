class User < ActiveRecord::Base
    has_many :pets
    has_many :creatures, through: :pets
    has_many :aliens, through: :pets
end