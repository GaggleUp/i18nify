# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "i18nify"
  s.version     = "0.0.1"
  s.authors     = ["rgould"]
  s.email       = ["rgould@u2622.ca"]
  s.homepage    = ""
  s.summary     = %q{An alternate way to internationalize your application.}
  s.description = %q{An alternate way to internationalize your application.}

  s.rubyforge_project = "i18nify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails-i18n"
  s.add_dependency "activerecord"
  s.add_development_dependency "rspec"
end
