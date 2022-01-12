class AccountController < ApplicationController
    before_action :set_account, only: %i[ show edit update destroy ]
    def index
        @accounts = Account.all
    end
    
    def show
    end
  
    def new
    end
  
    def edit
    end
  
    def create
    end
  
    def update
    end
      # DELETE /accounts/1 or /accounts/1.json
    def destroy
        @account.destroy
        redirect_to management_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
        @account = Account.find(params[:id])
    end
    
end
