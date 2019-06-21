class AbilityBarConfig < ApplicationRecord



    def get_json
      return {slot_id: self.slot_id, ability_name: self.ability_name }
    end


end
