require_relative 'cypher'
require_relative 'engine'
require 'pry'

class Decryptor
  attr_reader :message, :cypher
  def initialize(message)
    @message = message
    @cypher = Cypher.new.c_map.reverse
    @engine = Engine.new
  end

  def split_encrypted_message
    @message = message.downcase
    return message.chars
  end

  def index_encrypted_message
    elements = @cypher
    mssg = split_encrypted_message
    return mssg.map {|d| elements.index(d)}
  end

  def cycled_decrypted_offsets
    offset = @engine.cryptor #print if want to see
    ie_message = index_encrypted_message
    complete_offset = offset.cycle(ie_message.length).map {|x| x}
    # this is cycling rotate sum based on mssg length and puting in array
  end
  # #
  def creating_rotate_offset
    # puts "this is the rotate_offset"
    flat_offsets = cycled_decrypted_offsets
    rotate_offset = indexed_message.zip(flat_offsets).map {|x1, x2| x1.to_i + x2.to_i}
    return rotate_offset #puts if want to see
  end

  def decrypted
    sum_for_rotator = creating_rotate_offset
    golden_eggs = []
    sum_for_rotator.each do |e|
      golden_eggs << @cypher.rotate(e)[0]
    end
    print golden_eggs.join("")
  end
end

# decrypt = Decryptor.new("")
