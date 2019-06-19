class Stat < ApplicationRecord

  # the bare minimum necessary to save

  def self.permitted_stats
    return [
      'skillpoints',
      'gold',
      'experiencetotal'
    ]
  end


  def self.stat_name_permitted?(statname)
    return permitted_stats.include?(statname.downcase)
  end

  def get_json
    return {name: self.name, amount: self.amount}
  end

end
