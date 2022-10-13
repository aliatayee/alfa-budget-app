class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :activities,dependent: :destroy, foreign_key: 'author_id'
  has_many :categories, dependent: :destroy
  validates :name, presence: true, allow_blank: false, length: { maximum: 250 }

end
