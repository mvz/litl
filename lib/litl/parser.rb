require 'temple/parser'
module Litl
  class Parser < Temple::Parser
    def call src
      [:html, :tag, 'br', [:html, :attrs]]
    end
  end
end
