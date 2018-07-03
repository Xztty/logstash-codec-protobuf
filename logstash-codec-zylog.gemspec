Gem::Specification.new do |s|

  s.name            = 'logstash-codec-zylog'
  s.version         = '1.0.5'
  s.licenses        = ['Apache-2.0']
  s.summary         = "This codec may be used to decode (via inputs) and encode (via outputs) protobuf messages"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Inga Feick"]
  s.email           = 'inga.feick@trivago.com'
  s.require_paths   = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "codec" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'ruby-protocol-buffers' # used by the compiled version of our protobuf definition. 
  s.add_development_dependency 'logstash-devutils'
end

