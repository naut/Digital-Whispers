xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Digital Whispers"
    xml.description "We are looking for your data trash"
    xml.language "en-us"
    xml.copyright "Copyright 2010 Digital Whispers"
    xml.link "http://digital-whispers.net"

    for image in @images.reverse
      xml.item do
        xml.title image.owner_id
        xml.description "http://digital-whispers.net"+image.image.url+" http://digital-whispers.net"+image.image.url(:red)+" http://digital-whispers.net"+image.image.url(:blue)+" http://digital-whispers.net"+image.image.url(:green)
        xml.original "http://digital-whispers.net"+image.image.url
        xml.red "http://digital-whispers.net"+image.image.url(:red)
        xml.blue "http://digital-whispers.net"+image.image.url(:blue)
        xml.green "http://digital-whispers.net"+image.image.url(:green)
        xml.link image_url(image)
        xml.guid image_url(image)
      end
    end
  end
end