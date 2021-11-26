# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/clean"
require "rake/manifest/task"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs = ["lib"]
  t.ruby_opts += ["-w -Itest"]
  t.test_files = FileList["test/**/*_test.rb"]
end

Rake::Manifest::Task.new do |t|
  t.patterns = ["{lib}/**/*", "*.md"]
end

task build: ["manifest:check"]
task default: [:test, "manifest:check"]
