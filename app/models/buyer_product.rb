class BuyerProduct < ApplicationRecord
  belongs_to :Buyer
  belongs_to :Product
end
