require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/encryptor'

class EncryptorTest < Minitest::Test

  def test_message_can_be_accepted
    encrypt = Encryptor.new("hi")
    assert_equal "hi", encrypt.message
  end

  def test_message_can_be_split_into_single_characters
    encrypt = Encryptor.new("hi")
    assert_equal ["h","i"], encrypt.split_message
  end

  def test_cypher_can_be_passed_into_encryptor_class
    encrypt = Encryptor.new("hi")
    assert_equal Cypher.new.character_map, encrypt.cypher
  end

  def test_converting_characters_to_nums_by_index
    encrypt = Encryptor.new("hi")
    assert_equal [7,8], encrypt.indexed_message
  end

  def test_message_encrypts
    encrypt = Encryptor.new("hello world")
    refute_equal "hello world", encrypt.encrypted
  end

end
