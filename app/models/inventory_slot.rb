class InventorySlot < ApplicationRecord



  def get_json
    return [slot_id: self.slot_id, item_id: self.item_id, name: self.name, quantity: self.quantity]
  end


end
