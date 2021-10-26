class Tweet < ApplicationRecord
  validates :image, presence: true
  validates :place, presence: true
with_options numericality: { other_than: 1, message: "can't be blank" }  do
  validates :genre_id, presence: true
  validates :with_id, presence: true
  validates :how_id, presence: true
end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :with
  belongs_to :how

end
