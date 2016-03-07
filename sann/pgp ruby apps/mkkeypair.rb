require 'rubygems'
require 'openpgp'

gpg = OpenPGP::Engine::GnuPG.new(:homedir => '~/.gnupg')
key_id = gpg.gen_key({
  :key_type      => 'DSA',
  :key_length    => 1024,
  :subkey_type   => 'ELG-E',
  :subkey_length => 1024,
  :name          => 'Group 1',
  :comment       => nil,
  #:email         => '',
  #:passphrase    => '',
})
