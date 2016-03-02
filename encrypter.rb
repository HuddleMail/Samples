#!/bin/ruby

require 'openpgp'
require 'mail'

def encrypterTest
  message = ARGF.read
  encrypted = `#$message | gpg -e -r "nealio"`
  `#$encrypted | mail -s "ENCRYPTED" nealiof1000@gmail.com`
  decrypted = `#$encrypted | gpg -d`
  `#$decrypted | mail -s "decrypted" nealiof1000@gmail.com`

end

encrypterTest


