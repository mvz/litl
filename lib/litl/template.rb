require 'tilt'
require 'temple'
require 'litl/engine'

module Litl
  Template = Temple::Templates::Tilt(Engine, register_as: 'litl')
end
