class Spell < ApplicationRecord




  def get_json
    return [name: self.name, learned:self.learned ]
  end



end
