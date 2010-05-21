xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Digital Whispers"
    xml.description "Interactive Media Installation"
    xml.language "en-us"
    xml.copyright "Copyright 2010 Digital Whispers"
    xml.link "http://digital-whispers.net"

    for image in @images.reverse
      xml.item do
        xml.title image.id
        xml.description "uploaded by "+image.entry.user.username
        xml.original "http://digital-whispers.net"+image.image.url
        xml.link image_url(image)
        xml.guid image_url(image)
      end
    end
  end
end