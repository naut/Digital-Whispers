xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    for entry in @entries
      xml.entry do
        xml.id entry.id
        xml.user entry.user.username
        for image in entry.images do
          xml.img image.image.url.split(/\//).last
        end
      end
    end
  end
end