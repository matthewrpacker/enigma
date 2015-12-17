require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/decryptor'

class DecryptorTest < Minitest::Test
  def test_message_can_be_accepted
    decrypt = Decryptor.new("2o")
    assert_equal "2o", decrypt.message
  end

  def test_message_can_be_split_into_single_characters
    decrypt = Decryptor.new("2o")
    assert_equal ["2","o"], decrypt.split_encrypted_message
  end

  def test_cypher_can_be_passed_into_decryptor_class
    decrypt = Decryptor.new("2o")
    assert_equal Cypher.new.reverse_character_map, decrypt.cypher
  end

  def test_converting_characters_to_nums_by_index
    decrypt = Decryptor.new("2o")
    assert_equal [10,24], decrypt.indexed_encrypted_message
  end

  def test_message_encrypts
    decrypt = Decryptor.new("2o")
    refute_equal "2o", decrypt.decrypted
  end

end
