class Room < ApplicationRecord
  belongs_to :hotel

  validates :room_type, :price, :hotel_id, presence: true
end
