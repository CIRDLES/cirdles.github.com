require "minitest/autorun"

class TestMinitestMock < Minitest::Test
  parallelize_me!

  def setup
    @mock = Minitest::Mock.new.expect(:foo, nil)
    @mock.expect(:meaning_of_life, 42)
  end

  def test_create_stub_method
    assert_nil @mock.foo
  end

  def test_allow_return_value_specification
    assert_equal 42, @mock.meaning_of_life
  end

  def test_blow_up_if_not_called
    @mock.foo

    util_verify_bad "expected meaning_of_life() => 42"
  end

  def test_not_blow_up_if_everything_called
    @mock.foo
    @mock.meaning_of_life

    assert_mock @mock
  end

  def test_allow_expectations_to_be_added_after_creation
    @mock.expect(:bar, true)
    assert @mock.bar
  end

  def test_not_verify_if_new_expected_method_is_not_called
    @mock.foo
    @mock.meaning_of_life
    @mock.expect(:bar, true)

    util_verify_bad "expected bar() => true"
  end

  def test_blow_up_on_wrong_number_of_arguments
    @mock.foo
    @mock.meaning_of_life
    @mock.expect(:sum, 3, [1, 2])

    e = assert_raises ArgumentError do
      @mock.sum
    end

    assert_equal "mocked method :sum expects 2 arguments, got 0", e.message
  end

  def test_return_mock_does_not_raise
    retval = Minitest::Mock.new
    mock = Minitest::Mock.new
    mock.expect(:foo, retval)
    mock.foo

    assert_mock mock
  end

  def test_mock_args_does_not_raise
    skip "non-opaque use of ==" if maglev?

    arg = Minitest::Mock.new
    mock = Minitest::Mock.new
    mock.expect(:foo, nil, [arg])
    mock.foo(arg)

    assert_mock mock
  end

  def test_set_expectation_on_special_methods
    mock = Minitest::Mock.new

    mock.expect :object_id, "received object_id"
    assert_equal "received object_id", mock.object_id

    mock.expect :respond_to_missing?, "received respond_to_missing?"
    assert_equal "received respond_to_missing?", mock.respond_to_missing?

    mock.expect :===, "received ==="
    assert_equal "received ===", mock.===

    mock.expect :inspect, "received inspect"
    assert_equal "received inspect", mock.inspect

    mock.expect :to_s, "received to_s"
    assert_equal "received to_s", mock.to_s

    mock.expect :public_send, "received public_send"
    assert_equal "received public_send", mock.public_send

    mock.expect :send, "received send"
    assert_equal "received send", mock.send

    assert_mock mock
  end

  def test_expectations_can_be_satisfied_via_send
    @mock.send :foo
    @mock.send :meaning_of_life

    assert_mock @mock
  end

  def test_expectations_can_be_satisfied_via_public_send
    skip "Doesn't run on 1.8" if RUBY_VERSION < "1.9"

    @mock.public_send :foo
    @mock.public_send :meaning_of_life

    assert_mock @mock
  end

  def test_blow_up_on_wrong_arguments
    @mock.foo
    @mock.meaning_of_life
    @mock.expect(:sum, 3, [1, 2])

    e = assert_raises MockExpectationError do
      @mock.sum(2, 4)
    end

    exp = "mocked method :sum called with unexpected arguments [2, 4]"
    assert_equal exp, e.message
  end

  def test_expect_with_non_array_args
    e = assert_raises ArgumentError do
      @mock.expect :blah, 3, false
    end

    assert_equal "args must be an array", e.message
  end

  def test_respond_appropriately
    assert @mock.respond_to?(:foo)
    assert @mock.respond_to?(:foo, true)
    assert @mock.respond_to?("foo")
    assert !@mock.respond_to?(:bar)
  end

  def test_no_method_error_on_unexpected_methods
    e = assert_raises NoMethodError do
      @mock.bar
    end

    expected = "unmocked method :bar, expected one of [:foo, :meaning_of_life]"

    assert_equal expected, e.message
  end

  def test_assign_per_mock_return_values
    a = Minitest::Mock.new
    b = Minitest::Mock.new

    a.expect(:foo, :a)
    b.expect(:foo, :b)

    assert_equal :a, a.foo
    assert_equal :b, b.foo
  end

  def test_do_not_create_stub_method_on_new_mocks
    a = Minitest::Mock.new
    a.expect(:foo, :a)

    assert !Minitest::Mock.new.respond_to?(:foo)
  end

  def test_mock_is_a_blank_slate
    @mock.expect :kind_of?, true, [Fixnum]
    @mock.expect :==, true, [1]

    assert @mock.kind_of?(Fixnum), "didn't mock :kind_of\?"
    assert @mock == 1, "didn't mock :=="
  end

  def test_verify_allows_called_args_to_be_loosely_specified
    mock = Minitest::Mock.new
    mock.expect :loose_expectation, true, [Integer]
    mock.loose_expectation 1

    assert_mock mock
  end

  def test_verify_raises_with_strict_args
    mock = Minitest::Mock.new
    mock.expect :strict_expectation, true, [2]

    e = assert_raises MockExpectationError do
      mock.strict_expectation 1
    end

    exp = "mocked method :strict_expectation called with unexpected arguments [1]"
    assert_equal exp, e.message
  end

  def test_method_missing_empty
    mock = Minitest::Mock.new

    mock.expect :a, nil

    mock.a

    e = assert_raises MockExpectationError do
      mock.a
    end

    assert_equal "No more expects available for :a: []", e.message
  end

  def test_same_method_expects_are_verified_when_all_called
    mock = Minitest::Mock.new
    mock.expect :foo, nil, [:bar]
    mock.expect :foo, nil, [:baz]

    mock.foo :bar
    mock.foo :baz

    assert_mock mock
  end

  def test_same_method_expects_blow_up_when_not_all_called
    mock = Minitest::Mock.new
    mock.expect :foo, nil, [:bar]
    mock.expect :foo, nil, [:baz]

    mock.foo :bar

    e = assert_raises(MockExpectationError) { mock.verify }

    exp = "expected foo(:baz) => nil, got [foo(:bar) => nil]"

    assert_equal exp, e.message
  end

  def test_same_method_expects_with_same_args_blow_up_when_not_all_called
    mock = Minitest::Mock.new
    mock.expect :foo, nil, [:bar]
    mock.expect :foo, nil, [:bar]

    mock.foo :bar

    e = assert_raises(MockExpectationError) { mock.verify }

    exp = "expected foo(:bar) => nil, got [foo(:bar) => nil]"

    assert_equal exp, e.message
  end

  def test_verify_passes_when_mock_block_returns_true
    mock = Minitest::Mock.new
    mock.expect :foo, nil do
      true
    end

    mock.foo

    assert_mock mock
  end

  def test_mock_block_is_passed_function_params
    arg1, arg2, arg3 = :bar, [1, 2, 3], { :a => "a" }
    mock = Minitest::Mock.new
    mock.expect :foo, nil do |a1, a2, a3|
      a1 == arg1 && a2 == arg2 && a3 == arg3
    end

    mock.foo arg1, arg2, arg3

    assert_mock mock
  end

  def test_mock_block_is_passed_function_block
    mock = Minitest::Mock.new
    block = proc { "bar" }
    mock.expect :foo, nil do |arg, &blk|
      arg == "foo" &&
      blk == block
    end
    mock.foo "foo", &block
    assert_mock mock
  end

  def test_verify_fails_when_mock_block_returns_false
    mock = Minitest::Mock.new
    mock.expect :foo, nil do
      false
    end

    e = assert_raises(MockExpectationError) { mock.foo }
    exp = "mocked method :foo failed block w/ []"

    assert_equal exp, e.message
  end

  def test_mock_block_throws_if_args_passed
    mock = Minitest::Mock.new

    e = assert_raises(ArgumentError) do
      mock.expect :foo, nil, [:a, :b, :c] do
        true
      end
    end

    exp = "args ignored when block given"

    assert_equal exp, e.message
  end

  def test_mock_returns_retval_when_called_with_block
    mock = Minitest::Mock.new
    mock.expect(:foo, 32) do
      true
    end

    rs = mock.foo

    assert_equal rs, 32
  end

  def util_verify_bad exp
    e = assert_raises MockExpectationError do
      @mock.verify
    end

    assert_equal exp, e.message
  end

  def test_mock_called_via_send
    mock = Minitest::Mock.new
    mock.expect(:foo, true)

    mock.send :foo
    assert_mock mock
  end

  def test_mock_called_via___send__
    mock = Minitest::Mock.new
    mock.expect(:foo, true)

    mock.__send__ :foo
    assert_mock mock
  end

  def test_mock_called_via_send_with_args
    mock = Minitest::Mock.new
    mock.expect(:foo, true, [1, 2, 3])

    mock.send(:foo, 1, 2, 3)
    assert_mock mock
  end

end

require "minitest/metametameta"

class TestMinitestStub < Minitest::Test
  parallelize_me!

  def setup
    super
    Minitest::Test.reset

    @tc = Minitest::Test.new "fake tc"
    @assertion_count = 1
  end

  def teardown
    super
    assert_equal @assertion_count, @tc.assertions
  end

  class Time
    def self.now
      24
    end
  end

  def assert_stub val_or_callable
    @assertion_count += 1

    t = Time.now.to_i

    Time.stub :now, val_or_callable do
      @tc.assert_equal 42, Time.now
    end

    @tc.assert_operator Time.now.to_i, :>=, t
  end

  def test_stub_private_module_method
    @assertion_count += 1

    t0 = Time.now

    self.stub :sleep, nil do
      @tc.assert_nil sleep(10)
    end

    @tc.assert_operator Time.now - t0, :<=, 1
  end

  def test_stub_private_module_method_indirect
    @assertion_count += 1

    fail_clapper = Class.new do
      def fail_clap
        raise
        :clap
      end
    end.new

    fail_clapper.stub :raise, nil do |safe_clapper|
      @tc.assert_equal :clap, safe_clapper.fail_clap # either form works
      @tc.assert_equal :clap, fail_clapper.fail_clap # yay closures
    end
  end

  def test_stub_public_module_method
    Math.stub :log10, :stubbed do
      @tc.assert_equal :stubbed, Math.log10(1000)
    end
  end

  def test_stub_value
    assert_stub 42
  end

  def test_stub_block
    assert_stub lambda { 42 }
  end

  def test_stub_block_args
    @assertion_count += 1

    t = Time.now.to_i

    Time.stub :now,  lambda { |n| n * 2 } do
      @tc.assert_equal 42, Time.now(21)
    end

    @tc.assert_operator Time.now.to_i, :>=, t
  end

  def test_stub_callable
    obj = Object.new

    def obj.call
      42
    end

    assert_stub obj
  end

  def test_stub_yield_self
    obj = "foo"

    val = obj.stub :to_s, "bar" do |s|
      s.to_s
    end

    @tc.assert_equal "bar", val
  end

  def test_dynamic_method
    @assertion_count = 2

    dynamic = Class.new do
      def self.respond_to?(meth)
        meth == :found
      end

      def self.method_missing(meth, *args, &block)
        if meth == :found
          false
        else
          super
        end
      end
    end

    val = dynamic.stub(:found, true) do |s|
      s.found
    end

    @tc.assert_equal true, val
    @tc.assert_equal false, dynamic.found
  end

  def test_mock_with_yield
    mock = Minitest::Mock.new
    mock.expect(:write, true) do
      true
    end
    rs = nil

    File.stub(:open, true, mock) do
      File.open("foo.txt", "r") do |f|
        rs = f.write
      end
    end
    @tc.assert_equal true, rs
  end

end
