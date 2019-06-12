class InventorySlot < ApplicationRecord



  def get_json
    return [slot_id: self.slot_id, item_id: self.item_id, item_name: self.item_name, item_quantity: self.item_quantity]
  end


end
