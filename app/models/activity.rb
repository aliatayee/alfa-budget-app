class Activity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :categories

  validates :name, presence: { message: "Name can't be null" }, length: { maximum: 250 }
  validates :amount, presence: { message: "Amount can't be null" }
  validates :amount, numericality: { only_float: true, greater_than: 0, message: 'Amount must be greater than 0' }
  validates_associated :categories, :author
  validates_presence_of :categories
end
