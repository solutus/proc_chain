require 'test_helper'


class ChainTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Chain::VERSION
  end

  def test_chain_with_default_value
    result = Chain::Builder.new(0)
      .next { |data| data + 1 }
      .next { |data| data + 1 }
      .data
    assert result, 2
  end

  def test_chain_without_default_value
    result = Chain::Builder.new
      .next { 1 }
      .next { |data| data + 1 }
      .data
    assert result, 2
  end
end
