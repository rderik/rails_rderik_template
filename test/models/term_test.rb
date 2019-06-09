require 'test_helper'

class TermTest < ActiveSupport::TestCase
   test "Invalid without name" do
     term = Term.new(name: nil, content: nil)
     refute term.valid? 'user is valid without a name'
     assert_not_nil term.errors[:name], 'no validation error for name present'
   end
end
