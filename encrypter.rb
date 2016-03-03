#!/bin/ruby

require 'openpgp'
require 'mail'

def encrypterTest
  message = ARGF.read
  encrypted = `echo "#$message" | gpg -e -r "nealio"`
  `echo "#$encrypted" | mail -s "ENCRYPTED" nealiof1000@gmail.com`
  decrypted = `echo "#$encrypted" | gpg -d`
  `echo "#$decrypted" | mail -s "DECRYPTED" nealiof1000@gmail.com`
end

encrypterTest


