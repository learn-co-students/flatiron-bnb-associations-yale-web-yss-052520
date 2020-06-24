class Neighborhood < ApplicationRecord
    belongs_to :city
    has_many :listings
    has_many :hosts, :class_name => "User", through: :listings
end
