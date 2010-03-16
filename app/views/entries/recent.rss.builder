xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Digital Whispers"
    xml.description "We are looking for your data trash"
    xml.language "en-us"
    xml.copyright "Copyright 2010 Digital Whispers"
    xml.link "http://digital-whispers.net"

    for entry in @entries
      xml.item do
        xml.title entry.id
        for image in entry.images.reverse
          xml.image do
            xml.url "http://digital-whispers.net"+image.image.url
          end
        end
        
      end
    end
  end
end