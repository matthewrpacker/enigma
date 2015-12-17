require_relative 'cypher'
require_relative 'engine'

class Encryptor
  attr_reader :message, :cypher
  def initialize(message)
    @message = message
    @cypher = Cypher.new.character_map
    @engine = Engine.new
  end

  def split_message
    @message = message.downcase
    message.chars
  end

  def indexed_message
    components = @cypher
    split_message.map {|d| components.index(d)}
  end

  def cycled_offsets
    combined_offset = @engine.total_offset
    combined_offset.cycle(indexed_message.length).map {|x| x}
  end

  def rotate_offset
    indexed_message.zip(cycled_offsets).map {|x1, x2| x1.to_i + x2.to_i}
  end

  def encrypted
    encrypted_message = []
    rotate_offset.each do |e|
      encrypted_message << @cypher.rotate(e)[0]
    end
    return encrypted_message = encrypted_message.join("")
  end

end

encrypt = Encryptor.new("hi")
puts encrypt.encrypted
