class BudgetsController < ApplicationController
    before_action :set_budget, only: [:edit, :update, :destroy]
    def index
        @budgets = Budget.all
        @transactions = Transaction.all
    end

    def new
        @budget = Budget.new
    end

    def create
        @budget = Budget.new(budget_params)
        @budget.user_id = current_user.id
        if @budget.save
            redirect_to budgets_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @budget.update(budget_params)
            redirect_to budgets_path
        else
            render :edit
        end
    end
    
    def destroy
        @budget.destroy
        redirect_to budgets_path
    end


    private

    def set_budget
        @budget = Budget.find(params[:id])
    end

    def budget_params
        params.require(:budget).permit(:budgeted_value, :category_id)
    end
        
end
