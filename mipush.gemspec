# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mipush/version'

Gem::Specification.new do |spec|
  spec.name          = "mipush"
  spec.version       = Mipush::VERSION
  spec.authors       = ["xiaoronglv"]
  spec.email         = ["xiaoronglv@hotmail.com"]
  spec.summary       = %q{小米消息推送}
  spec.description   = %q{目前仅仅实现了 Android 的推送功能，文档稍后补上}
  spec.homepage      = "https://github.com/xiaoronglv/mipush"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rest-client"
end
