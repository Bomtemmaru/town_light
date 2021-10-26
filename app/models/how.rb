class How < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '車' },
    { id: 3, name: '電車' },
    { id: 4, name: 'バス' },
    { id: 5, name: '自転車' },
    { id: 6, name: '徒歩' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tweets
  
end
