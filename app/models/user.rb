class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :scores, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items

end
