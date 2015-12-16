require "pry"

class Cypher
  attr_reader :c_map, :rev_c_map
  def initialize
    @c_map = [*"a".."z",*"0".."9"," ",".",","]
    @rev_c_map = @c_map.reverse
  end
end

# map = CharacterMap.new
# puts map.character_map[20]
