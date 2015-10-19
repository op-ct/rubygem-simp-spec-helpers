# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'simp/spec_helpers.rb'

Gem::Specification.new do |s|
  s.name        = 'simp-spec-helpers'
  s.date        = Date.today.to_s
  s.summary     = 'rspec-puppet helper methods for SIMP'
  s.description = <<-EOF
    helper methods to help scaffold SIMP rspec-puppet tests
  EOF
  s.version     = Simp::SpecHelpers::VERSION
  s.license     = 'Apache-2.0'
  s.authors     = ['Chris Tessmer']
  s.email       = 'simp@simp-project.org'
  s.homepage    = 'https://github.com/simp/rubygem-simp-spec-helpers'
  s.metadata = {
                 'issue_tracker' => 'https://simp-project.atlassian.net'
               }
  s.add_runtime_dependency 'rspec-puppet'

  ### s.files = Dir['Rakefile', '{bin,lib,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z .`.split("\0")
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end
