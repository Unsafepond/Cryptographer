require 'pry'

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

    a = ('a'..'z').to_a
    b = a.rotate(13)
    h = Hash[a.zip(b)]

    c = ('A'..'Z').to_a
    d = c.rotate(13)
    h2 = Hash[c.zip(d)]


    encryption = []
    characters = message.split("")
    characters.each do |char|
      if char == " "
        encryption << " "
      elsif char == char.upcase
        encryption << h2[char]
      else
        encryption << h[char]
      end
    end

    encryption.join


  end

end


engine = EncryptionEngine.new
 encryptor = Encryptor.new("My Message")
engine.encrypt("My Message")