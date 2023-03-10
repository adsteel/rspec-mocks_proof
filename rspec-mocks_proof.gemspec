# frozen_string_literal: true

require_relative "lib/rspec/mocks_proof/version"

Gem::Specification.new do |spec|
  spec.name = "rspec-mocks_proof"
  spec.version = Rspec::MocksProof::VERSION
  spec.authors = ["Adam Steel"]
  spec.email = ["adamgsteel@gmail.com"]

  spec.summary = "Proof that keyword arg mocks break in Ruby 3.2"
  spec.required_ruby_version = "3.2.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec"
end
