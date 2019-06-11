class Quest < ApplicationRecord


  enum progress: {
   noprogress: 0,
   started: 1,
   completed: 2
 }


end
