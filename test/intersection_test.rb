require 'minitest/pride'
require 'minitest/autorun'
require 'mocha/minitest'
require './lib/light'
require './lib/intersection'

class IntersectionTest < Minitest::Test

  def setup
    @north = Light.new
    @south = Light.new
    @east = Light.new
    @west = Light.new

    pairs = {
      :ns => [@north, @south],
      :ew => [@east, @west]
    }

    @intersection = Intersection.new(pairs)
  end

  def test_intersection_attibutes
    assert_equal @intersection.pairs.keys, [:ns, :ew]
    assert_equal @intersection.pairs.values, [[@north, @south], [@east, @west]]
  end
end
