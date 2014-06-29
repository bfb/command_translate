require 'command_translate/version.rb'
require 'command_translate/translation.rb'
require 'command_translate/logger.rb'
require 'net/http'
require 'json'
require 'terminal-table'

module CommandTranslate
  def self.translate
    options = ARGV
    begin
      from, to = options.shift.split(":")
      if validate_languages(from, to)
        text = options.join(" ")
        Logger.print("Translating: #{text} (#{LANGUAGES[from.to_sym]} to #{LANGUAGES[to.to_sym]})")
        result = Translation.new(text, from, to).translation
        Logger.print(result)
      else
        Logger.info "Invalid language(s)! View all supported languages typing 'translate languages'."
      end
    rescue Exception => e
      instructions
    end
  end

  def self.instructions
    Logger.info "Translator command line"
    Logger.info "To use just run: translate from:to text"
    Logger.info "e.g.: translate en:es \"My dog is crazy\""
  end

  def self.help
    instructions
  end

  def self.languages
    rows = LANGUAGES.collect {|k,v| [v, k] }
    languages_table = Terminal::Table.new :headings => ['Language', 'Symbol'], :rows => rows
    Logger.info languages_table
  end

  def self.validate_languages(from, to)
    LANGUAGES.has_key?(from.to_sym) && LANGUAGES.has_key?(to.to_sym)
  end
end
