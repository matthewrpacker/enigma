require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cypher'



class CharacterMapTest < Minitest::Test
  def test_letter_output_based_on_array_index
    characters = CharacterMap.new
    assert_equal "a", characters.c_map[0]
    assert_equal "z", characters.c_map[25]
  end

  def test_integer_output_based_on_array_index
    characters = CharacterMap.new
    assert_equal 0, characters.c_map[26]
    assert_equal 9, characters.c_map[35]
  end
#test for reverse or rotate
  def test_characters_based_on_array_index
    characters = CharacterMap.new
    assert_equal ".", characters.c_map[37]
    assert_equal ",", characters.c_map[38]
  end

  def test_characters_based_on_sequence
    characters = CharacterMap.new
    assert_equal ["b", "c", "d", "e"], characters.c_map.slice(1,4)
  end

  def test_map_length_is_38_characters
    characters = CharacterMap.new
    assert_equal 39, characters.c_map.length
  end

  def test_character_output_by_random_index
    characters = CharacterMap.new
    assert_equal ["c", "n", 0, " "], characters.c_map.values_at(2,13,26,36)
  end


end
