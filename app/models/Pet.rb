class Pet < ActiveRecord::Base
    belongs_to :user
    has_many :aliens
    has_many :creatures
end