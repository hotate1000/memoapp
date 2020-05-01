class Memo < ApplicationRecord
  validates :deadline, presence: true
  validates :time, presence: true
  validates :comment, presence: true
end
