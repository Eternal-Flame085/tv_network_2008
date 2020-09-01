require "minitest/autorun"
require "minitest/pride"
require "./lib/character"

class CharacterTest < Minitest::Test
  def test_it_exists
    character = Character.new

    assert_instance_of Character, character
  end

end
