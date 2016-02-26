#!/bin/ruby

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
  `rm #$filename.gpg`
  `gpg -e -r "neal friedman" #$filename`
   puts "The encrypted message:"
   puts `cat #$filename.gpg` 
end

def decrypt
  puts `gpg -d #$filename.gpg`
end

createFile
encrypt
decrypt
