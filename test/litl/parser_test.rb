require 'test_helper'

describe Litl::Parser do
  it "handles a simple HTML example" do
    src = "(br)"

    Litl::Parser.new.call(src).must_equal [:html, :tag, 'br', [:html, :attrs]]
  end
end
