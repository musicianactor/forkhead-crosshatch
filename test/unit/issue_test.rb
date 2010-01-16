require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Issue.new.valid?
  end
end
