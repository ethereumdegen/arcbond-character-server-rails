class Perk < ApplicationRecord


  def get_json
    return {name: self.name, level: self.level, slot_id: self.slot_id}
  end



end
