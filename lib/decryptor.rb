require_relative 'cypher'
require_relative 'engine'
require_relative 'encryptor'


class Decryptor
  attr_reader :message, :cypher
  def initialize(message)
    @message = message
    @cypher = Cypher.new.reverse_character_map
    @engine = Engine.new
  end

  def split_encrypted_message
    @message = message.downcase
    message.chars
  end

  def indexed_encrypted_message
    components = @cypher
    split_encrypted_message.map {|d| components.index(d)}
  end

  def cycled_decrypted_offsets
    combined_offset = @engine.total_offset
    combined_offset.cycle(indexed_encrypted_message.length).map {|x| x}
  end
  # #
  def rotate_offset
    indexed_encrypted_message.zip(cycled_decrypted_offsets).map {|x1, x2| x1.to_i + x2.to_i}
  end

  def decrypted
    decrypted_message = []
    rotate_offset.each do |e|
      decrypted_message << @cypher.rotate(e)[0]
    end
    decrypted_message.join("")
  end

end
#
# decrypt = Decryptor.new("2kg.9e648j6y")
# puts decrypt.decrypted
