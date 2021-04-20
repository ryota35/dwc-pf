class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :scores, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :items

  attachment :image

  validates :name, presence: true

  def favorite?(article)
    favorites.where(article_id: article).exists?
  end

end
