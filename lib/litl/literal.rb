# frozen_string_literal: true

require "treetop"

module Litl
  # Syntax node representing a literal value
  class Literal < Treetop::Runtime::SyntaxNode
    def to_sexp
      [:static, text_value]
    end
  end
end
