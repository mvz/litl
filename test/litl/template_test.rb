require 'test_helper'

# These are basically integration tests
describe Litl::Template do
  def rendered_result source
    Litl::Template.new { source }.render
  end

  it "handles a simple static HTML example" do
    src = "(html (h1 Foo) (p Foo bar bar))"

    expected = "<html><h1>Foo</h1><p>Foo bar bar</p></html>"

    rendered_result(src).must_equal expected
  end

  it "handles a simple HTML example with an ivar" do
    src = "(html (h1 Foo) (p (= @foo .) bar))"

    @foo = 'contents-of-foo'
    p self

    expected = "<html><h1>Foo</h1><p>contents-of-foo bar</p></html>"

    rendered_result(src).must_equal expected
  end
end
