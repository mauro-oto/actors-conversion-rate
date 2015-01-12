require 'rainbow/ext/string'
require 'optparse'
require 'wolfram-alpha'

@options = {}

OptionParser.new do |opts|
  opts.on("--actors a,b,c", Array, "Array of actors") do |actors|
    @options[:actors] = actors
  end
end.parse!

class OscarConversionRate
  def initialize
    options = { "format" => "plaintext" }
    @client = WolframAlpha::Client.new ENV["WOLFRAM_ALPHA_API_KEY"], options
  end

  def conversion_rate_for(actors)
    puts "Calculating conversion rate... "
    actors.each do |actor|
      nominations, wins = count_nominations_and_wins_for(actor)
      nominations += wins
      result = wins.to_f / nominations
      result = 1 if result.infinite?
      result = 0 if result.nan?
      puts "#{titleize(actor).color(:green)}: #{result.round(4).to_s.color(:cyan)} (Wins: #{wins.to_s.color(:red)}, Nominations: #{nominations.to_s.color(:magenta)})"
    end
    puts "Finished! "
  end

  def count_nominations_and_wins_for(actor)
    response = @client.query "#{actor} oscar nominations"
    nominations = response.pods.last.subpods.first
    result = nominations.plaintext
    [result.scan(/nominee/).count, result.scan(/winner/).count]
  end

  def titleize(str)
    str.split(/ |\_/).map(&:capitalize).join(" ")
  end
end

oscars = OscarConversionRate.new
if @options[:actors].nil?
  @options[:actors] =
  ["robert downey jr",
   "tom cruise",
   "johnny depp",
   "meryl streep",
   "brad pitt",
   "jennifer lawrence",
   "emma stone",
   "jamie foxx",
   "anne hathaway",
   "matt damon"]
end
puts oscars.conversion_rate_for(@options[:actors])
