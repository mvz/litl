# frozen_string_literal: true

require "test_helper"

# These are basically integration tests
describe Litl::Template do
  def rendered_result(source)
    Litl::Template.new { source }.render
  end

  it "handles a simple static HTML example" do
    src = "(html (h1 Foo) (p Foo bar bar))"

    expected = "<html><h1>Foo</h1><p>Foo bar bar</p></html>"

    _(rendered_result(src)).must_equal expected
  end
end
