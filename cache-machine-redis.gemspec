# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cache-machine-redis}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sergei Zinin"]
  s.date = %q{2012-03-05}
  s.description = %q{Redis adapter for Cache Machine gem.}
  s.email = %q{szinin@partyearth.com}
  s.extra_rdoc_files = %w{LICENSE.txt README.rdoc}
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://github.com/zininserge/cache-machine-redis}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Allows Cache Machine to deal with Redis.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cache-machine>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<redis>, [">= 2.2.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<rails>, [">= 3"])
    else
      s.add_dependency(%q<cache-machine>, [">= 0.2.0"])
      s.add_dependency(%q<redis>, [">= 2.2.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<rails>, [">= 3"])
    end
  else
    s.add_dependency(%q<cache-machine>, [">= 0.2.0"])
    s.add_dependency(%q<redis>, [">= 2.2.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<rails>, [">= 3"])
  end
end
