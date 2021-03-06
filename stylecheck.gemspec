# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stylecheck/version'

Gem::Specification.new do |spec|
  spec.name          = 'stylecheck'
  spec.version       = Stylecheck::VERSION
  spec.authors       = ['Soumya Veer']
  spec.email         = ['veer.soumya@gmail.com']

  spec.summary       = 'Runs code style check on Ruby and SCSS files.'
  spec.description   = 'Runs code style check on Ruby and SCSS files.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org.
  # To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or
  # delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] =
  #  "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = Dir['{config,lib}/**/*', './']

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  #spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 0.46.0'
  spec.add_dependency 'scss_lint', '>= 0.51.0'
  spec.add_development_dependency 'bundler', '~> 1.13.4'
  spec.add_development_dependency 'rake', '~> 10.0'
end
