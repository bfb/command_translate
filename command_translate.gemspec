require File.join([File.dirname(__FILE__),'lib','command_translate','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'command_translate'
  s.version = CommandTranslate::VERSION
  s.author = 'bfb'
  s.email = 'b.fbohn@gmail.com'
  s.homepage = 'https://github.com/bfb/command_translate'
  s.license = 'MIT'
  s.summary = 'Command line translator.'
  s.description = 'It uses Google Translate to translate words directly into the terminal.'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A simple command line translator.'
  s.files = %w(
bin/translate
lib/command_translate/logger.rb
lib/command_translate/translation.rb
lib/command_translate/version.rb
lib/command_translate.rb
  )
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'translate'
  s.add_runtime_dependency('colorize')
  s.add_runtime_dependency('terminal-table')
end
