# Ruby program that takes a string and saves to a file.
# It then saves to a file. Which gpg will use to import
# the public key to the keyring.


# $publicKey variable wil probably will be getting from 
# params from rails or from the model.
$publicKey = 
"-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

mQGiBFbWWvwRBADDiQSXEmNRpjdos9Tr++AD8cy5k4BZd6JZba+ZnBT8QxfP9d7B
5XcAjuk9li5CgfgvkatvMfOk+Rw7j3FmiPjOjHBYfUwSgbCLeq8Qa6zi3ZQCXnuS
DHdoqQ+/KPUXUeHa9aqUZAoWOmS/EolvaQx0lkvhxPKPcsufjxpl1BSSpwCgkqKP
wZVjmnX/PKRqRBofeC7rx4cD/0U0AadEqfbjEBSm8eyoWXAZRBZBhTf9Yvb8Nm+c
TYYAbdYPtpoAC879bRiyCvUZ3WsH79OPz0Bt0+kEI/UBIKHHRu11Mr+KWW4QE7Dd
HwyDppP+M6uM64t6wiaGdhfxlBKFx8SxNojDcM4kyxeHJIDha56jZNRJNaavKOn6
AjxyBACP0/JyXyULhdJEG7YKR01hBdu/n3MLwlitbqK5VksVtVPau/l3eOIoq5/+
3udGMcNNXEsr0zkMrnbbksTNfHDHGG1h0pBa7A3w0Xaj2518Cf3tiSyLKgOyO3zy
mAp98yzfb2yyi8k6cJ0MtEfcM8oXBXawGKPsJJ3BwJCaTPj3z7QVeWVhaCBpdCB3
b3JrcyBmaW5hbGx5iGIEExECACIFAlbWWvwCGyMGCwkIBwMCBhUIAgkKCwQWAgMB
Ah4BAheAAAoJEC7mEUNp13qgU5QAnibESkPmF9shT9wdbEzz0Rj7dC+HAJ0daDws
ARTKtfyzAA/kHwGul2GQVLkBDQRW1lr8EAQAg2bg5rz3mNi/lAkWoaLc2tmmWBtN
54bupY8YSP2DSzE+KQFOnLSqBi5D5B5tnTtYY69kyVhDY/WRzJr8TuEvOLbdAagG
y+0P8F+ogIMs4QHQyknjZWclUeZwVay3Uq/44/Lcz9EdAaXcFMBKe1J3Jg1652OK
BFWIopt1lv8DAwMAAwUD/1cZLSUkMm6pf7tWajp4Pc5l86LmYZNAJt8R6Btsg+7R
RGx5JNlXohxbMd7/j8tke7GBUMUh2R0CX6vSOjQjFEhL/9g3V+peMIf7ckd+BeSG
liLCSlZTCvWbIdDYf70UPV93QDBK4tCxovFGP9aKeh6aRSSZpOfctOIcl83jI+JG
iEkEGBECAAkFAlbWWvwCGwwACgkQLuYRQ2nXeqA5wACghwIOSt1YdDNPyzIIpBYR
tgxGIBcAoJDtIYLRH1kyoTVlqVVvksbofkc9
=+Jsa
-----END PGP PUBLIC KEY BLOCK-----"

# saves the string(gonna be public key) into a tempfile
def saveTempKey
  File.open("tempOut.txt", 'w') {|f| f.write($publicKey) }
end

def importPublicKey
  `gpg --import tempOut.txt`
end

saveTempKey
importPublicKey

