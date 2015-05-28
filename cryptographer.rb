require 'pry'

class Encryptor

	def self.encrypt(message, key_size)

	   alphabet_lowercase = ('a'..'z').to_a
	   	alphabet_lowercase_rotated = alphabet_lowercase.rotate(key_size)
	    alphabet_lowercase_combined = Hash[alphabet_lowercase.zip(alphabet_lowercase_rotated)]

	    alphabet_uppercase = ('A'..'Z').to_a
	    alphabet_uppercase_rotated = alphabet_uppercase.rotate(key_size)
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
	    puts encryption.join
	    encryption.join
	end

end

class EncryptionEngine

	def encrypt(message, key_size=0)
		shuffled_key = []
		message.length.times do
			shuffled_key << rand(26)
		end

		Encryptor.encrypt(message, shuffled_key)

	end

	def decrypt(message, key_size)
		Decryptor.decrypt(message, key_size)
	end

end


class Decryptor

	def self.decrypt(message, key_size)

	   alphabet_lowercase = ('a'..'z').to_a
	   	alphabet_lowercase_rotated = alphabet_lowercase.rotate(-key_size)
	    alphabet_lowercase_combined = Hash[alphabet_lowercase.zip(alphabet_lowercase_rotated)]

	    alphabet_uppercase = ('A'..'Z').to_a
	    alphabet_uppercase_rotated = alphabet_uppercase.rotate(-key_size)
	    alphabet_uppercase_combined = Hash[alphabet_uppercase.zip(alphabet_uppercase_rotated)]

	    decryption = []
	    characters = message.split("")
	    characters.each do |char|
	      if char == " "
	        decryption << " "
	      elsif char == char.upcase
	        decryption << alphabet_uppercase_combined[char]
	      else
	        decryption << alphabet_lowercase_combined[char]
	      end
	    end
	    puts decryption.join
	    decryption.join
	end
end


# engine = EncryptionEngine.new
# engine.encrypt("My message")
# EncryptionEngine(Encryptor.new("My Message"))
engine = EncryptionEngine.new
engine.encrypt("My Message", 13)
engine.decrypt("Zl Zrffntr", -13)
# encryptor = Encryptor.new("My message")