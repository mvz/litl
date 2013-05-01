# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib/litl/version.rb')

Gem::Specification.new do |s|
  s.name = "litl"
  s.version = Litl::VERSION

  s.summary = %q{Create templates with sane delimiters}
  s.description = %q{Lisp-inspired Template Language}

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = ""
  s.license = "MIT"

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^test/})

  s.add_development_dependency("bundler", "~> 1.3")
  s.add_development_dependency("rake")
  s.add_development_dependency('minitest', ["~> 4.3"])
  s.add_development_dependency('indentation')

  s.add_runtime_dependency('tilt')
  s.add_runtime_dependency('temple')

  s.require_paths = ["lib"]
end
