class AdminController < ApplicationController
    before_action :set_product, only: %i[ show edit update destroy ]
    layout "admin"
    def index
        
    end

    def user_management
        @accounts = Account.all 
    end

    def product_management
        @products = Product.all
        @categorys = ProductCategory
    end
    
    
      # DELETE /accounts/1 or /accounts/1.json
    def destroy
        @account.destroy
        respond_to do |format|
            format.html { redirect_to account_url, notice: "account was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
        @account = account.find(params[:id])
    end
end
