class Contact < ApplicationRecord

  validates :title, presence: true, length: {maximum: 50}
  validates :message, presence: true

end
