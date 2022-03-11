class Thing < ApplicationRecord
  validates :description, presence: { message: "must be filled!" }
end
