require 'date'

require_relative 'lib/deployder/version'

Gem::Specification.new do |spec|
	spec.name          = 'deployder'
	spec.version       = Deployder::VERSION
	spec.date          = Date.today.to_s
	spec.authors       = ['Alexander Popov']
	spec.email         = ['alex.wayfer@gmail.com']

	spec.summary       = 'Console tool for deploying'
	spec.description   = 'Execute commands from simple YAML files through SSH.'
	spec.homepage      = 'https://github.com/AlexWayfer/deployder'
	spec.license       = 'MIT'

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	spec.bindir        = 'exe'
	spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
	spec.require_paths = ['lib']

	spec.add_runtime_dependency 'net-ssh', '~> 4.1'
	spec.add_runtime_dependency 'thor', '~> 0.19'

	spec.add_development_dependency 'bundler', '~> 1.14'
	spec.add_development_dependency 'rake', '~> 10.0'
	spec.add_development_dependency 'pry', '~> 0.10'
	spec.add_development_dependency 'bacon', '~> 1.2'
end
