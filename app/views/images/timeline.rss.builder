xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    for entry in @entries
      
      if entry.images.count != 0 then
        xml.entry do
     
          xml.imgO entry.images.first.image.url(:medium).split(/\//).last
          xml.imgE entry.images.last.image.url(:medium).split(/\//).last
          xml.user entry.user.username
          xml.id entry.images.last.id
          xml.time entry.created_at

        end
      end
      
      
      

    end
  end
end