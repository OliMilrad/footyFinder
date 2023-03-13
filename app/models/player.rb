class Player < ApplicationRecord
  belongs_to :user

  validates full_name:, presence: true
  validates position:, presence: true, length: { maximum: 4 }
  validates nationality:, presence: true
  validates age:, presence: true, inclusion: { in: 15..60 }
  validates last_club:, presence: true
  validates price:, presence: true
  validates user_id:, presence: true, uniqueness: true
  
end
