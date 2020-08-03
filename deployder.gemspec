# frozen_string_literal: true

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

	spec.add_runtime_dependency 'clamp', '~> 1.3'
	spec.add_runtime_dependency 'net-ssh', '~> 5.1'

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'pry-byebug', '~> 3.7'
	spec.add_development_dependency 'rake', '~> 13.0'
	spec.add_development_dependency 'rspec', '~> 3.8'
	spec.add_development_dependency 'rubocop', '~> 0.65.0'
end
