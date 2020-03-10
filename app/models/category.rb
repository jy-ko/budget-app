class Category < ApplicationRecord
    has_many :budgets

    validates :category_name, :presence => true, :uniqueness => true
end
