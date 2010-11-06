require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = "haphazard"
  gem.summary     = "returns a random activerecord model instance"
  gem.description = "adds a random() method to your activerecord models. respects where conditions and joins."
  gem.email       = "defeated2k4@gmail.com"
  gem.homepage    = "http://github.com/defeated/haphazard"
  gem.authors     = ["eddie cianci"]
  
  gem.add_runtime_dependency 'activerecord', '~> 3.0'

  gem.add_development_dependency "rspec", "~> 2.0.0"
  gem.add_development_dependency "bundler", "~> 1.0.0"
  gem.add_development_dependency "jeweler", "~> 1.5.0.pre5"
  gem.add_development_dependency "rcov", ">= 0"
  gem.add_development_dependency "acts_as_fu"
  
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "haphazard #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
