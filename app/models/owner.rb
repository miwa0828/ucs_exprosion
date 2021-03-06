class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :images, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :shops, dependent: :destroy

  #バリデーション
  validates :name, presence: true, length: { minimum: 2 }
end
