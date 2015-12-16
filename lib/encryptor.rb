# p ARGV

# message = File.read(ARGV[0])
#
# p message
#
# output_file = File.new(ARGV[1],'w') #writable
#
# output_file.puts 'goodbye'
#
# key = ARGV[2] || #generate key
# date = ARGV[3] || #


require_relative 'cypher'
require_relative 'engine'
require 'pry'

class Encryptor
  attr_reader :message, :cypher
  def initialize(message)
    @message = message
    @cypher = Cypher.new.c_map
    @engine = Engine.new
  end

  def split_message
    @message = message.downcase
    return message.chars
  end

  def indexed_message
    elements = @cypher
    mssg = split_message
    return mssg.map {|d| elements.index(d)}
  end

  def cycled_offsets
    # puts "this is the sum or the thing you add to your indexed"
    offset = @engine.cryptor #print if want to see
    p_message = indexed_message
    complete_offset = offset.cycle(p_message.length).map {|x| x}
  end
  #
  def creating_rotate_offset
    # puts "this is the rotate_offset"
    flat_offsets = cycled_offsets
    rotate_offset = indexed_message.zip(flat_offsets).map {|x1, x2| x1.to_i + x2.to_i}
    return rotate_offset #puts if want to see
  end

  def encrypted
    sum_for_rotator = creating_rotate_offset
    golden_eggs = []
    sum_for_rotator.each do |e|
      golden_eggs << @cypher.rotate(e)[0]
    end
    print golden_eggs.join("")
  end
end

#   # def decrypted
#   #   sum_for_rotator = creating_rotate_offset
#   #   golden_eggs = []
#   #   sum_for_rotator.each do |e|
#   #     golden_eggs << @cypher.rotate(e)[0]
#   #   end
#   #   print golden_eggs.join("")
#   # end
#
#
#
#
#
#
#   # def decrypted
#   #   reverse_cypher = @cypher.reverse
#   #   sum_for_rotator = creating_rotate_offset
#   #   sum_for_rotator.map do |e|
#   #     reverse_cypher.rotate(e)[0]
#   #   end.join("")
#   # end
#
#
#
#
#
#
#
#   # a1, a2 = flattened_message.to_i.each.next, flat_offsets.to_i.each.next
#   # rotate_offset << a1 + a2
#   # end
#   # binding.pry
#   # return rotate_offset
#   # comb_array = flattened_message.zip(flat_offsets)
#   # loop do
#   #   rotate_offset << flattened_message + flat_offsets
#   #   if
#
#
#     # a = a1[0].to_i + a1[1].to_i
#     # b = b1[0].to_i + b1[1].to_i
#     # c = c1[0].to_i + c1[1].to_i
#     # d = d1[0].to_i + d1[1].to_i
#     # return rotate_offset = [a,b,c,d]
#
# end
# encrypt = Encryptor.new("yo..end..")
# # # # puts encrypt.indexed_message
# # # # encrypt.cycled_offsets
# # # encrypt.creating_rotate_offset
# puts encrypt.encrypted
