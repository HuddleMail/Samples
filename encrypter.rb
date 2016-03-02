#!/bin/ruby

require 'openpgp'
require 'mail'

$filename = "encrypted"

def createFile
  aFile = File.new("encrypted", "w+")
  text = ARGF.read
  puts "Unencrypted message: #{text}"
  if aFile
    aFile.syswrite(text)
    aFile.close
  else
    puts "Unable to open file!"
  end
end

def encrypt
   #text = ARGF.read
   text = `ARGF.read | gpg --encrypt -r "nealio" | mail -s "encrypted message" nealiof1000@gmail.com`
   `text | mail -s "unencrypted text" nealiof1000@gmail.com"
  #`rm #$filename.gpg`
  #`gpg -e -r "nealio" #$filename`
   #puts "The encrypted message:"
   #puts `cat #$filename.gpg` 
  
end

def decrypt
  puts `gpg -d #$filename.gpg`
end

def sendMail
  `mail    
 
end

#createFile
encrypt
#decrypt

