class Tagging < ActiveRecord::Base
  attr_accessible :tushuolist_id, :tushuosort_id
  
  #belongs_to
  belongs_to :tushuolist
  belongs_to :tushuosort
end
