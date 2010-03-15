class Image < ActiveRecord::Base
  
  belongs_to  :original_image, :class_name => "OriginalImage"
  
  belongs_to  :poster,
              :class_name => "User",
              :foreign_key => "owner_id"
  
end
