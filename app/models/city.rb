class City < ApplicationRecord
    has_many :neighborhoods
    has_many :listings, through: :neighborhoods
    # belongs_to :host, :class_name => "User"
end