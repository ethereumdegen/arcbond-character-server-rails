class Quest < ApplicationRecord

  #not working well.. hmm
  enum quest_progress: {
   noprogress: 0,
   started: 1,
   completed: 2
 }



 def get_json
   return [name: self.name, progress:self.progress ]
 end

end
