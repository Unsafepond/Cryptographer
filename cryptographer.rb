
class Encryptor
  attr_accessor :message
  def initialize(message)
    @message = message
  end

  

end

class Decryptor
  # Your code here
end

class EncryptionEngine

  def encrypt(message)

    encrypt_hash = Hash.new

   alphabet_lowercase = ('a'..'z').to_a
   	alphabet_lowercase_rotated = alphabet_lowercase.rotate(13)
    alphabet_lowercase_combined = Hash[alphabet_lowercase.zip(alphabet_lowercase_rotated)]

    alphabet_uppercase = ('A'..'Z').to_a
    alphabet_uppercase_rotated = alphabet_uppercase.rotate(13)
    alphabet_uppercase_combined = Hash[alphabet_uppercase.zip(alphabet_uppercase_rotated)]


    encryption = []
    characters = message.split("")
    characters.each do |char|
      if char == " "
        encryption << " "
      elsif char == char.upcase
        encryption << alphabet_uppercase_combined[char]
      else
        encryption << alphabet_lowercase_combined[char]
      end
    end

    encryption.join


  end

end


engine = EncryptionEngine.new
 encryptor = Encryptor.new("My Message")
engine.encrypt("My Message")