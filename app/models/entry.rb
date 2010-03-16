class Entry < ActiveRecord::Base
  
  has_many :images
  belongs_to :user,
              :foreign_key => "owner_id"
  
end
