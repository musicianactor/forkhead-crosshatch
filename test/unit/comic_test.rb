require 'test_helper'

class ComicTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Comic.new.valid?
  end
end
