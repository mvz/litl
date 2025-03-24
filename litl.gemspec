# frozen_string_literal: true

require_relative "lib/litl/version"

Gem::Specification.new do |spec|
  spec.name = "litl"
  spec.version = Litl::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "Create templates with sane delimiters"
  spec.description = "Lisp-inspired Template Language"
  spec.homepage = "https://github.com/mvz/litl"

  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/litl"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.require_paths = ["lib"]

  spec.add_dependency "temple", "~> 0.10.0"
  spec.add_dependency "tilt", "~> 2.0"
  spec.add_dependency "treetop", "~> 1.6"

  spec.add_development_dependency "minitest", "~> 5.6"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rubocop", "~> 1.51"
  spec.add_development_dependency "rubocop-minitest", "~> 0.37.1"
  spec.add_development_dependency "rubocop-packaging", "~> 0.6.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.18"
  spec.add_development_dependency "rubocop-rake", "~> 0.7.1"
end
