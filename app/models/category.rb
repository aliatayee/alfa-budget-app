class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :activities, dependent: :destroy

  validates :name, presence: { message: "Name can't be null" }, length: { maximum: 250 }
  validates :icon, presence: { message: "Icon can't be null" }
end
