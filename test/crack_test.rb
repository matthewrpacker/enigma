require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/crack'
require 'pry'

class CrackTest < Minitest::Test

  def test_encrypted_message_can_be_accepted
    crack = Crack.new
  end
