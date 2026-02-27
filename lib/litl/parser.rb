# frozen_string_literal: true

require "temple/parser"
require "treetop"
require "litl/identifier"
require "litl/literal"
require "litl/body"
require "litl/expression"
require "litl/litl_grammar"

module Litl
  class Parser < Temple::Parser
    def call(src)
      tree = LitlGrammarParser.new.parse src
      clean_tree(tree).to_sexp
    end

    private

    def clean_tree(tree)
      if tree.elements
        tree.elements.delete_if { |el| el.instance_of?(Treetop::Runtime::SyntaxNode) }
        tree.elements.each { |el| clean_tree el }
      end
      tree
    end
  end
end
