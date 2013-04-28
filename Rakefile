require 'bundler'
require 'rake/clean'

require 'rake/testtask'

include Rake::DSL

Bundler::GemHelper.install_tasks

Rake::TestTask.new do |t|
  t.libs = ['lib']
  t.ruby_opts += ["-w -Itest"]
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => [:test]
