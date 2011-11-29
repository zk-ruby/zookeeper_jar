# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zookeeper_jar/version"

Gem::Specification.new do |s|
  s.name        = "slyphon-zookeeper_jar"
  s.version     = ZookeeperJar::VERSION
  s.platform    = 'java'
  s.authors     = ["Jonathan D. Simms"]
  s.email       = ["slyphon@gmail.com"]
  s.homepage    = "https://github.com/slyphon/zookeeper_jar"
  s.summary     = %q{the zookeeper jar file wrapped in a gem}
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
