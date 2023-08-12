class SaleItemsController < ApplicationController
    def index
      sale_items = SaleItem.all
      render json: sale_items
    end
  
    def show
      sale_item = SaleItem.find(params[:id])
      render json: sale_item
    end
  
    def create
      sale_item = SaleItem.new(sale_item_params)
      if sale_item.save
        render json: sale_item, status: :created
      else
        render json: sale_item.errors, status: :unprocessable_entity
      end
    end
  
    def update
      sale_item = SaleItem.find(params[:id])
      if sale_item.update(sale_item_params)
        render json: sale_item
      else
        render json: sale_item.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      sale_item = SaleItem.find(params[:id])
      sale_item.destroy
      head :no_content
    end
  
    private
  
    def sale_item_params
      params.require(:sale_item).permit(:sale_id, :storage_item_id, :quantity, :unit_price)
    end
end
  

