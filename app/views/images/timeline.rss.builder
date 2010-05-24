xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    for entry in @entries
      xml.entry do
        xml.id entry.id
        for image in entry.images do
          xml.image "http://digital-whispers.net"+image.image.url
        end
      end
    end
  end
end