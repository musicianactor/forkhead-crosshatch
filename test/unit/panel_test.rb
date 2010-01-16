require 'test_helper'

class PanelTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Panel.new.valid?
  end
end
