class Spell < ApplicationRecord




  def get_json
    return {name: self.name, learned:self.learned, slot_id: self.slot_id }
  end



end
