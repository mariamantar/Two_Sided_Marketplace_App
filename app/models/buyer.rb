class Buyer < ApplicationRecord
  belongs_to :User
  belongs_to :Profile
end
