class SalesController < ApplicationController
    def index
      sales = Sale.all
      render json: sales
    end
  
    def show
      sale = Sale.find(params[:id])
      render json: sale
    end
  
    def create
      sale = Sale.new(sale_params)
      if sale.save
        render json: sale, status: :created
      else
        render json: sale.errors, status: :unprocessable_entity
      end
    end
  
    def update
      sale = Sale.find(params[:id])
      if sale.update(sale_params)
        render json: sale
      else
        render json: sale.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      sale = Sale.find(params[:id])
      sale.destroy
      head :no_content
    end
  
    private
  
    def sale_params
      params.require(:sale).permit(:date, :customer_id, :total_amount)
    end
end
  
