require 'mime/types'

class Image < ActiveRecord::Base
  
  
              
  belongs_to :entry
  
  has_attached_file :image,
  :styles => {  :red => ["640x480#", :jpg],
                :blue => ["640x480#", :jpg],
                :green => ["640x480#", :jpg],
                :small => ["120x120#", :jpg],
                :medium => ["260x195#", :jpg],
                :big => ["640x480#", :jpg]
  },

  :convert_options => { :red => '-channel Red -separate',
                        :blue => '-channel Blue -separate',
                        :green => '-channel Green -separate',
  },
  
  :url => "/system/images/:style/:hash.:extension", 
  :path => ":rails_root/public/system/images/:style/:hash.:extension"
  
  validates_attachment_content_type :image,
        :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png'],
        :message => "Please upload an image file (jpeg, gif or png)."


        # Fix the mime types. Make sure to require the mime-types gem
         def image_file=(data)
           data.content_type = MIME::Types.type_for(data.original_filename).to_s
           self.file = data
         end

end
