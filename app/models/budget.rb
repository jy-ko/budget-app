class Budget < ApplicationRecord
    belongs_to :user
    belongs_to :category

    validates :period, presence: true

    def available(budget)
        budget.budgeted_value - budget.actual_value
    end
end
