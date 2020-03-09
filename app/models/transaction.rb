class Transaction < ApplicationRecord
    belongs_to :budget
    belongs_to :period
end
