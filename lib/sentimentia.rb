require "sentimental"
require "treat"

require "sentimentia/version"

module Sentimentia
  class Filter
    include Treat::Core::DSL

    def initialize(file, lo, hi)
      @file, @lo, @hi = file, lo, hi

      Sentimental.load_defaults

      @sent = Sentimental.new
    end

    def text
      paragraph(File.read(@file)).segement
    end

    def filter(lo = @lo, hi = @hi)
      @filtered ||= text.select do |s|
        score = @sent.get_score(s.to_s)

        score >= @lo && score <= @hi
      end
    end
  end

  class CLI
    def initialize
      if ARGV.length < 3
        abort(usage)
      else
        @file, @lo, @hi = ARGV
      end

      @filter = Filter.new(@file, @lo, @hi)
    end

    def generate
      @filter.filter.each {|s| puts s }
    end

    private

    def usage
      "Usage: #{$0} [file] [lo thresh] [hi thresh]"
    end
  end
end
