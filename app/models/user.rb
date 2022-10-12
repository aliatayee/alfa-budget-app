class User < ApplicationRecord
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :activities,dependent: :destroy, foreign_key: 'author_id'
  has_many :categories, dependent: :destroy
  validates :name, presence: true, allow_blank: false, length: { maximum: 250 }
  # after_initialize :set_defaults

end
