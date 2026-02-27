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
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/litl"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.require_paths = ["lib"]

  spec.add_dependency "temple", "~> 0.10.0"
  spec.add_dependency "tilt", "~> 2.0"
  spec.add_dependency "treetop", "~> 1.6"
end
