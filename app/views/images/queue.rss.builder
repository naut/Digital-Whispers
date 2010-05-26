xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    

    for entry in @image_queue.reverse
      xml.item do
        xml.description entry.images.last.id.to_s+
            " http://digital-whispers.net"+entry.images.last.image.url(:big)+
            " http://digital-whispers.net"+entry.images.last.image.url(:red)+
            " http://digital-whispers.net"+entry.images.last.image.url(:blue)+
            " http://digital-whispers.net"+entry.images.last.image.url(:green)
      end
    end
    
  end
end