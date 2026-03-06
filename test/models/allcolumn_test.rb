require "test_helper"

class AllcolumnTest < ActiveSupport::TestCase
  test "the truth" do
    a = Allcolumn.first
    puts ">" * 80
    puts a.ctime.time_zone
    puts a.ctime.class

    assert true
  end
end
