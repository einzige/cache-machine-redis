# encoding: utf-8

ENV['BUNDLE_GEMFILE'] = 'Gemfile'

gem_root = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'bundler'
require 'rake'
require 'rake'
require 'rake/testtask'
require 'rspec'
require 'rspec/core/rake_task'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

task :default => :spec

desc "Run the test suite"
task :spec => ['spec:setup', 'spec:lib', 'spec:cleanup']

namespace :spec do
  desc "Setup the test environment"
  task :setup do
    system "cd #{gem_root} && bundle install && mkdir db"
  end

  desc "Cleanup the test environment"
  task :cleanup do
    FileUtils.rm_rf "#{gem_root}/db"
  end

  desc "Test the Cache Machine lib"
  RSpec::Core::RakeTask.new(:lib) do |task|
    task.pattern = gem_root + '/spec/lib/**/*_spec.rb'
  end
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "cache-machine-redis #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
