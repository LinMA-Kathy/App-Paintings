class Painting < ApplicationRecord
  belongs_to :artist
  has_many :reviews
  validates :views, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
