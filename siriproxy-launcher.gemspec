# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-launcher"
  s.version     = "0.0.1" 
  s.authors     = ["bikr"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{A launcher Siri Proxy Plugin}
  s.description = %q{This is a launcher. It simply intercepts the phrase "launch" and launches things. This is good base code for other plugins. }

  s.rubyforge_project = "siriproxy-launcher"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
	s.add_runtime_dependency "rb-appscript"
end
