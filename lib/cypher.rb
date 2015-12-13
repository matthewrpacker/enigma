require "pry"

class CharacterMap
  attr_reader :c_map
  def initialize
    letters = ("a".."z").to_a
    numbers = (0..9).to_a
    @c_map = letters + numbers + [" ", ".", ","]
  end
end

# map = CharacterMap.new
# puts map.character_map[20]
