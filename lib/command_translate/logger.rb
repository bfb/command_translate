require 'logger'
require 'colorize'

module CommandTranslate

  module Logger
    @log = ::Logger.new(STDOUT)

    def self.print(message)
      @log << "=> ".green + message.white + "\n"
    end

    def self.info(message)
      @log << "#{message}\n"
    end

  end
end
