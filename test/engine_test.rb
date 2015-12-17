require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/engine'

class EngineTest < Minitest::Test

  def test_key_gen_array_length
    engine = Engine.new
    assert_equal 4, engine.key_generator.length
  end

  def test_key_generator_each_array_length #included_each to add an assertion
    engine = Engine.new
    index_length = engine.key_generator[0]
    assert_equal 2, engine.key_generator[0].size
  end

  def test_date_of_today
    engine = Engine.new
    assert engine.date
  end

  def test_date_offeset_returns_last_four_of_squared_date
    engine = Engine.new
    engine.date_offset
    assert_equal "6225", engine.date_offset
  end

  def test_date_a_variable_matches_index
    engine = Engine.new
    assert_equal ["6","2","2","5"], engine.date_assignment
  end

  def test_key_generator_index_matches_assigned_letter
    engine = Engine.new
    assert_equal ["6","2","2","5"], engine.date_assignment
  end

end
