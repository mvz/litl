# frozen_string_literal: true

require_relative "lib/litl/version"

Gem::Specification.new do |spec|
  spec.name = "litl"
  spec.version = Litl::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "Create templates with sane delimiters"
  spec.description = "Lisp-inspired Template Language"
  spec.homepage = ""
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = `git ls-files -z`.split("\0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("temple", "~> 0.8.0")
  spec.add_runtime_dependency("tilt", "~> 2.0")
  spec.add_runtime_dependency("treetop", "~> 1.6")

  spec.add_development_dependency("indentation")
  spec.add_development_dependency("minitest", ["~> 5.6"])
  spec.add_development_dependency("rake")

  spec.add_development_dependency("rubocop", "~> 1.23.0")
  spec.add_development_dependency("rubocop-minitest", "~> 0.17.0")
  spec.add_development_dependency("rubocop-performance", "~> 1.12.0")
  spec.add_development_dependency("rubocop-rake", "~> 0.6.0")
end
