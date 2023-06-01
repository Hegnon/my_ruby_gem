# frozen_string_literal: true

require_relative "lib/binary_search/version"
require_relative "lib/calculate_age/version"
require_relative "lib/bubble_sort/version"
require_relative "lib/bubble_sort/version"
require_relative "lib/reversal_algorithm/version"
require_relative "lib/select_sort/version"

Gem::Specification.new do |spec|
  spec.name = "my_gem"
  spec.version = BinarySearch::VERSION
  spec.version = CalculateAge::VERSION
  spec.version = BubbleSort::VERSION
  spec.version = ReversalAlgorithm::VERSION
  spec.version = SelectSort::VERSION
  spec.authors = ["Hegnon"]
  spec.email = ["hegnondutra@gmail.com"]

  spec.summary = "A simple binary search implementation."
  spec.description = "This gem provides a basic implementation of the binary search algorithm in Ruby."
  spec.homepage = "https://example.com"
  spec.required_ruby_version = ">= 3.1.3"

  spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://example.com"
  spec.metadata["changelog_uri"] = "https://example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
