class SaleItem < ApplicationRecord
  belongs_to :sale
  belongs_to :storage_item
end
