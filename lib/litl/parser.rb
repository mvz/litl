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
      elements.first.to_sexp
    end
  end

  class TagExpression < Treetop::Runtime::SyntaxNode
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

  class DynamicExpression < Treetop::Runtime::SyntaxNode
    def to_sexp
      [:dynamic, elements.first.text_value]
    end
  end

  class Code < Treetop::Runtime::SyntaxNode
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
