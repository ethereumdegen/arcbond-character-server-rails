class Stat < ApplicationRecord

  # the bare minimum necessary to save

  def self.permitted_stats
    return [
      'max_life',
      'max_mana',
      'gold',
      'total_experience'
    ]
  end


  def self.stat_name_permitted?(statname)
    return permitted_stats.include?(statname)
  end

  def get_json
    return [name: self.name, amount: self.amount ]
  end

end
