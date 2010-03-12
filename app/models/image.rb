class Image < ActiveRecord::Base
  
  has_attached_file :image,
  :styles => {  :red => ["", :jpg],
                :blue => ["", :jpg],
                :green => ["", :jpg]
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

end
