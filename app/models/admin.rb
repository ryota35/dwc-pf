class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :rememberable,
         :validatable#, :recoverable#, :registerable

  has_many :articles, dependent: :destroy

end
