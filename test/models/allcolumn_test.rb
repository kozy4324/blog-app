require "test_helper"

class AllcolumnTest < ActiveSupport::TestCase
  test "the truth" do # rubocop:disable Minitest/MultipleAssertions
    a = Allcolumn.first

    assert_equal a&.cbinary.class, ::String
    assert_equal a&.cboolean.class, ::FalseClass
    assert_equal a&.cdate.class, ::Date
    assert_equal a&.cdatetime.class, ::ActiveSupport::TimeWithZone
    assert_equal a&.cdecimal.class, ::BigDecimal
    assert_equal a&.cfloat.class, ::Float
    assert_equal a&.cinteger.class, ::Integer
    assert_equal a&.cjson.class, ::Hash
    assert_equal a&.cstring.class, ::String
    assert_equal a&.ctext.class, ::String
    assert_equal a&.ctime.class, ::ActiveSupport::TimeWithZone
    assert_equal a&.ctimestamp.class, ::ActiveSupport::TimeWithZone
    assert_equal a&.cvirtual_int.class, ::Integer
    assert_equal a&.cvirtual_str.class, ::String
  end
end
