require_relative 'cypher'
require_relative 'decryptor'
require 'pry'

class Crack
  def initialize
    @cypher
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
  def count
    crack_map = @cypher
    crack_map.each {|c| while c != "."}
    c = 1
    until ...
      c += 1
    end
    c
  end
end
