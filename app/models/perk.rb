class Perk < ApplicationRecord


  def get_json
    return [name: self.name, level: self.level ]
  end



end
