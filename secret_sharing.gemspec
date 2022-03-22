# frozen_string_literal: true

require_relative "lib/secret_sharing/version"

Gem::Specification.new do |spec|
  spec.name = "secret_sharing"
  spec.version = SecretSharing::VERSION
  spec.authors = ["David William Silva"]
  spec.email = ["contact@davidwsilva.com"]

  spec.summary = "Secret sharing with Ruby."
  spec.description = "Secret sharing with Ruby."
  spec.homepage = "https://github.com/davidwilliam/secret_sharing"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/davidwilliam/secret_sharing"
  spec.metadata["changelog_uri"] = "https://github.com/davidwilliam/secret_sharing/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
