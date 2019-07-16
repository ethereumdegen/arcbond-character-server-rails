class StashSlot < ApplicationRecord

 
    def get_json
      return {slot_id: self.slot_id,
        item_id: self.item_id,
        item_name: self.item_name,
        enchantment_name: self.enchantment_name,
        quantity: self.quantity}
    end


end
