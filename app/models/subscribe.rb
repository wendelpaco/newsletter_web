class Subscribe < ApplicationRecord

  # Validations
  validates :name, :email, presence: true, length: { minimum: 3 }
end
