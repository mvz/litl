require 'litl/parser'
require 'temple/html/pretty'

module Litl
  class Engine < Temple::Engine
    use Parser

    filter :MultiFlattener
    filter :StaticMerger
    filter :DynamicInliner

    use Temple::HTML::Pretty

    generator :ArrayBuffer
  end
end
