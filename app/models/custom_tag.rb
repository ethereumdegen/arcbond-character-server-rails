class CustomTag < ApplicationRecord

  def get_json
    return {name: self.name, value: self.value }
  end



end
