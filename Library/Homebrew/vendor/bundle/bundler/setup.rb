require 'rbconfig'
unless defined?(Gem)
  module Gem
    def self.ruby_api_version
      RbConfig::CONFIG["ruby_version"]
    end

    def self.extension_api_version
      if 'no' == RbConfig::CONFIG['ENABLE_SHARED']
        "#{ruby_api_version}-static"
      else
        ruby_api_version
      end
    end
  end
end
kernel = (class << ::Kernel; self; end)
[kernel, ::Kernel].each do |k|
  if k.private_method_defined?(:gem_original_require)
    private_require = k.private_method_defined?(:require)
    k.send(:remove_method, :require)
    k.send(:define_method, :require, k.instance_method(:gem_original_require))
    k.send(:private, :require) if private_require
  end
end
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/concurrent-ruby-1.1.10/lib/concurrent-ruby")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/i18n-1.12.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/minitest-5.16.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/tzinfo-2.0.5/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/zeitwerk-2.6.6/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/activesupport-6.1.7/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/public_suffix-5.0.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/addressable-2.8.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/ast-2.4.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/bindata-2.4.14/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/msgpack-1.6.0")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/msgpack-1.6.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/bootsnap-1.15.0")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/bootsnap-1.15.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/byebug-11.1.3")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/byebug-11.1.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/coderay-1.1.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/highline-2.0.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/commander-4.6.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/connection_pool-2.3.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/did_you_mean-1.6.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/diff-lcs-1.5.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/docile-1.4.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/unf_ext-0.0.8.2")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/unf_ext-0.0.8.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/unf-0.1.4/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/domain_name-0.5.20190701/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/regexp_parser-2.6.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/ecma-re-validator-0.4.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/elftools-1.2.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/hana-1.3.7/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/hpricot-0.8.6")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/hpricot-0.8.6/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/http-cookie-1.0.5/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/json-2.6.3")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/json-2.6.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/uri_template-0.7.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/json_schemer-0.2.24/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/mime-types-data-3.2022.0105/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/mime-types-3.4.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/net-http-digest_auth-1.4.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/net-http-persistent-4.0.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/racc-1.6.1")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/racc-1.6.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/nokogiri-1.13.10-x86_64-darwin/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubyntlm-0.6.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/webrick-1.7.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/webrobots-0.1.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/mechanize-2.8.5/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/method_source-1.0.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/mustache-1.1.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/parallel-1.22.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/parallel_tests-3.13.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/parser-3.1.3.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rainbow-3.1.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/sorbet-runtime-0.5.10461/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/parlour-8.0.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/patchelf-1.4.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/plist-3.6.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/pry-0.14.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rack-3.0.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/unparser-0.6.4/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rbi-0.0.14/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/extensions/universal-darwin-21/#{Gem.extension_api_version}/rdiscount-2.2.7")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rdiscount-2.2.7/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rexml-3.2.5/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/ronn-0.7.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-support-3.12.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-core-3.12.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-expectations-3.12.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-mocks-3.12.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-3.12.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-github-2.4.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-its-1.3.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-retry-0.6.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-sorbet-1.9.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec-wait-0.0.9/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rspec_junit_formatter-0.6.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-ast-1.24.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/ruby-progressbar-1.11.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/unicode-display_width-2.3.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-1.40.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-performance-1.15.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-rails-2.17.4/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-rspec-2.16.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/rubocop-sorbet-0.6.11/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/ruby-macho-3.0.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/simplecov-html-0.12.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/simplecov_json_formatter-0.1.4/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/simplecov-0.21.2/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/simplecov-cobertura-2.1.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/sorbet-static-0.5.10461-universal-darwin-21/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/sorbet-0.5.10461/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/sorbet-static-and-runtime-0.5.10461/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/thor-1.2.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/spoom-1.1.11/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/yard-0.9.28/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/yard-sorbet-0.6.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/tapioca-0.7.3/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{Gem.ruby_api_version}/gems/warning-1.3.0/lib")
