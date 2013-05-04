require 'litl/parser'
require 'temple/html/pretty'

module Litl
  class Engine < Temple::Engine
    use Parser

    use Temple::HTML::Fast

    filter :MultiFlattener
    filter :StaticMerger
    filter :DynamicInliner

    generator :ArrayBuffer
  end
end
