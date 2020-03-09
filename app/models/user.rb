class User < ApplicationRecord
    has_many :budgets

    validates :name, presence: true;
    validates :email, presence: true;
end
