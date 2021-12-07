class Song < ApplicationRecord
  has_one_attached :image
  belongs_to :store
  belongs_to :album
  validates :title, presence: true
  validates :length, presence: true
  validates :genre, presence: true
  belongs_to :album
  belongs_to :store
  paginates_per 9
end
