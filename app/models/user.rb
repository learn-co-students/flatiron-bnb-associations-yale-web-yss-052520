class User < ApplicationRecord
    has_many :listings, :foreign_key => 'host_id'
    has_many :reservations, through: :listings, :foreign_key => 'host_id'


    has_many :reviews, :foreign_key => 'guest_id'
    
    # Reservation doesn't have trip field, but we can rename by specifying class
    has_many :trips, class_name: "Reservation", :foreign_key => 'guest_id'
    

end
