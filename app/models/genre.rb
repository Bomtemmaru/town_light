class Genre < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '海' },
    { id: 3, name: '山' },
    { id: 4, name: '川' },
    { id: 5, name: '繁華街' },
    { id: 6, name: '街' },
    { id: 7, name: '店' },
    { id: 8, name: 'chill' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tweets
  
end
