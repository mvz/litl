# frozen_string_literal: true

require File.join(File.dirname(__FILE__), "lib/litl/version.rb")

Gem::Specification.new do |s|
  s.name = "litl"
  s.version = Litl::VERSION

  s.summary = "Create templates with sane delimiters"
  s.description = "Lisp-inspired Template Language"

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = ""
  s.license = "MIT"

  s.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files = s.files.grep(%r{^test/})

  s.add_development_dependency("indentation")
  s.add_development_dependency("minitest", ["~> 5.3"])
  s.add_development_dependency("rake")

  s.add_runtime_dependency("temple", "~> 0.8.0")
  s.add_runtime_dependency("tilt", "~> 2.0")
  s.add_runtime_dependency("treetop", "~> 1.6")

  s.require_paths = ["lib"]
end
