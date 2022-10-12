class CategoryActivity < ApplicationRecord
  belongs_to :category
  belongs_to :activity
end
