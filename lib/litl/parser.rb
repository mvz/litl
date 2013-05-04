require 'temple/parser'
require 'treetop'
module LitlGrammar
  class Identifier < Treetop::Runtime::SyntaxNode
    def to_sexp
      text_value
    end
  end

  class Literal < Treetop::Runtime::SyntaxNode
    def to_sexp
      [:static, text_value]
    end
  end

  class Expression < Treetop::Runtime::SyntaxNode
    def to_sexp
      contents = elements.map do |elem|
        elem.to_sexp
      end
      [:html, :tag, contents.first, [:html, :attrs], *contents.last]
    end
  end

  class Body < Treetop::Runtime::SyntaxNode
    def to_sexp
      elements.map do |elem|
        elem.to_sexp
      end
    end
  end
end
require 'litl/litl_grammar'

module Litl
  class Parser < Temple::Parser
    def call src
      tree = LitlGrammarParser.new.parse src
      clean_tree(tree).to_sexp
    end

    private

    def clean_tree tree
      if tree.elements
        tree.elements.delete_if {|el| el.class == Treetop::Runtime::SyntaxNode}
        tree.elements.each {|el| clean_tree el }
      end
      tree
    end
  end
end
