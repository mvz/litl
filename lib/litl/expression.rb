# frozen_string_literal: true

require "treetop"

module Litl
  # Syntax node representing an expression
  class Expression < Treetop::Runtime::SyntaxNode
    def to_sexp
      tagname = elements.first.to_sexp
      body = elements.last.to_sexp

      case body.size
      when 0
        [:html, :tag, tagname, [:html, :attrs]]
      when 1
        [:html, :tag, tagname, [:html, :attrs], body.first]
      else
        [:html, :tag, tagname, [:html, :attrs], [:multi, *body]]
      end
    end
  end
end
