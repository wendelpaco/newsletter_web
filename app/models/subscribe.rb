class Subscribe < ApplicationRecord
  # Validations
  validates :name, :email, presence: true, length: { minimum: 3 }

  # scopes
  scope :order_by, ->(order = 'desc') {
    order("subscribes.created_at #{order}")
  }
end
