class Album < ApplicationRecord
  has_many :songs
  validates :title, presence: true
end
