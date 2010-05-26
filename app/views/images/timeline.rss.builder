xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    for entry in @entries
      
      xml.entry do
      
  
        xml.img entry.images.last.image.url(:medium).split(/\//).last
        xml.user entry.user.username
        xml.id entry.images.last.id

      end
      
      
      

    end
  end
end