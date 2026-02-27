# frozen_string_literal: true

require "treetop"

module Litl
  # Syntax node representing the body of an expression
  class Body < Treetop::Runtime::SyntaxNode
    def to_sexp
      elements.map(&:to_sexp)
    end
  end
end
