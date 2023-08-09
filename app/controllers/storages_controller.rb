class StoragesController < ApplicationController
    def index
        storages = Storage.all
        render json: storages
    end

    def show
        storage = Storage.find(params[:id])
        render json: storage
    end
      

    def create
        storage = Storage.new(storage_params)
        if storage.save
          render json: storage, status: :created
        else
          render json: storage.errors, status: :unprocessable_entity
        end
    end

    def update
        storage = Storage.find(params[:id])
        if storage.update(storage_params)
          render json: storage
        else
          render json: storage.errors, status: :unprocessable_entity
        end
    end

    def destroy
        storage = Storage.find(params[:id])
        storage.destroy
        head :no_content
    end
      
    private

    def storage_params
        params.require(:storage).permit(:name, :price, :quantity)
    end
end

