class Cypher
  attr_reader :character_map, :reverse_character_map
  def initialize
    @character_map = [*"a".."z",*"0".."9"," ",".",","]
    @reverse_character_map = @character_map.reverse
  end
end
