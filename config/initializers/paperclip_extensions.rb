Paperclip::Attachment.interpolations[:hash] = lambda do |attachment, style|
  hash = Digest::MD5.hexdigest(attachment.instance.id.to_s + 'deterministic')
  hash_path = '/'
  hash_path += hash.slice(0..10)
  hash_path[1..20]
end