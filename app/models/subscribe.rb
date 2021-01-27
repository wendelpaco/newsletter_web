class Subscribe < ApplicationRecord
  default_scope { order( created_at: :desc) }
  # Validations
  validates :name, :email, presence: true, length: { minimum: 3 }

  # scope :order_by, ->(order = 'desc') {
  #   order("subscribes.created_at #{order}")
  # }
end
