class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true

  # A scope is like a filter. This is the custom_display scope.
  # This will list the last 20 Messages.
  scope :custom_display, -> { order(:created_at).last(20) }
end
