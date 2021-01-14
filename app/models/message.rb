class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { minimum: 2, maximum: 120 }
  scope :display_last_20, -> { order(:created_at).last(20) }
end