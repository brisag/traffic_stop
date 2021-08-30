require 'minitest/pride'
require 'minitest/autorun'
require './lib/light'

class LightTest < Minitest::Test

  def setup
    @light = Light.new
  end

  def test_it_exists
    assert_instance_of Light, @light
  end

  def test_atttributes
    assert_nil @light.color
  end
end
