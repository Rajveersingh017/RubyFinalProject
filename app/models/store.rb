class Store < ApplicationRecord
  has_many :songs
  validates :name, presence: true
  validates :email, uniqueness: true
end
