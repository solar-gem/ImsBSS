strEncryptionKey = '00000000000000000000000000000000'
strPlainToken = 'Qaz12!qaz'
require 'openssl'
strEncryptedToken ='Qaz12!qaz123'
c = OpenSSL::Cipher::Cipher.new("AES-128-ECB").encrypt
c.key = strEncryptionKey
c.iv = '1234567890ABCDEF1234567890ABCDEF'
p strEncryptedToken = c.update(strPlainToken)
p strEncryptedToken << c.final
require 'base64'
strBase64Token = Base64.encode64(strEncryptedToken)
p strBase64Token ="#{strBase64Token}"

puts 'THE END'
gets


require 'rubygems'
require 'encryptor'


require 'openssl'
strEncryptionKey = '00000000000000000000000000000000'
strPlainToken = 'Qaz12!qaz'
cipher = OpenSSL::Cipher::Cipher.new("AES-128-ECB").encrypt
cipher.pkcs5_keyivgen(strEncryptionKey)
result = cipher.update(strPlainToken)
result << cipher.final



p Base64.encode64(result)


require 'openssl'
require 'digest/sha1'
c = OpenSSL::Cipher::Cipher.new("aes-256-cbc")
c.encrypt
# your pass is what is used to encrypt/decrypt
c.key = key = "00000000000000000000000000000000" #Digest::SHA1.hexdigest("00000000000000000000000000000000")
c.pkcs5_keyivgen("00000000000000000000000000000000")
e = c.update("Qaz12!qaz")
e << c.final
puts "encrypted: #{e}\n"
p e = Base64.b64encode(e)



 
 require 'base64'
 Encryptor.default_options.merge!(:key => '00000000000000000000000000000000')
credit_card = '7Qaz12!qaz'
encrypted_credit_card = credit_card.encrypt
p Base64.encode64(encrypted_credit_card)

# –¿¡Œ“¿≈“   http://snippets.dzone.com/posts/show/576
require 'openssl'
require 'digest/sha1'
c = OpenSSL::Cipher::Cipher.new("aes-256-cbc")
c.encrypt
# your pass is what is used to encrypt/decrypt
c.key = key = Digest::SHA1.hexdigest("yourpass")
c.iv = iv = c.random_iv
e = c.update("crypt this")
e << c.final
puts "encrypted: #{e}\n"
c = OpenSSL::Cipher::Cipher.new("aes-256-cbc")
c.decrypt
c.key = key
c.iv = iv
d = c.update(e)
d << c.final
puts "decrypted: #{d}\n"