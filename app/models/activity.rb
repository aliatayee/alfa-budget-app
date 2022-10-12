class Activity < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :categories_activities, dependent: :destroy
  
    validates :name, presence: { message: "Name can't be null" }, length: { maximum: 250 }
    validates :amount, presence: { message: "Amount can't be null" }
    validates :amount, numericality: { only_float: true, greater_than: 0, message: 'Amount must be greater than 0' }
end
