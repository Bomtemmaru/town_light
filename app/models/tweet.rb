class Tweet < ApplicationRecord
  validates :image, presence: true
  validates :place, presence: true
  validates :genre_id, presence: true
  validates :with_id, presence: true
  validates :how_id, presence: true
  belongs_to :user
end
