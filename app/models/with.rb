class With < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '友達' },
    { id: 3, name: 'カップル' },
    { id: 4, name: '家族' },
    { id: 5, name: '同性' },
    { id: 6, name: '異性' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tweets

end
