xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    for image in @images
      
      xml.entry do
      
  
        xml.img image.image.url.split(/\//).last
        xml.user image.entry.user.username
        xml.id image.id

      end
      
      
      

    end
  end
end