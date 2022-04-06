class Reservation < ApplicationRecord
  belongs_to :user, optional: true, foreign_key: true
  belongs_to :room, optional: true, foreign_key: true
end
