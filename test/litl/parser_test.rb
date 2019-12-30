# frozen_string_literal: true

require "test_helper"

describe Litl::Parser do
  it "handles a very simple HTML example" do
    src = "(br)"

    Litl::Parser.new.call(src).must_equal [:html, :tag, "br", [:html, :attrs]]
  end

  it "handles a simple HTML example" do
    src = "(html (h1 Foo) (p Foo bar bar))"

    expected = [:html, :tag, "html", [:html, :attrs],
                [:multi,
                 [:html, :tag, "h1", [:html, :attrs], [:static, "Foo"]],
                 [:html, :tag, "p", [:html, :attrs], [:static, "Foo bar bar"]]]]

    Litl::Parser.new.call(src).must_equal expected
  end
end
