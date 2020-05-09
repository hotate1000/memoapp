class Mmemo < ApplicationRecord
  validates :deadline, presence: true
  validates :comment,  presence: true

  belongs_to :user
end
