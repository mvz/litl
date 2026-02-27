# frozen_string_literal: true

require "treetop"

module Litl
  # Syntax node representing an identifier
  class Identifier < Treetop::Runtime::SyntaxNode
    def to_sexp
      text_value
    end
  end
end
