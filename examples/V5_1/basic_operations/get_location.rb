lib = File.expand_path('../../../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'yahoo_ad_api'

def get_location
  yahoo = YahooAdApi::Api.new("/Users/equus/Documents/progs/work/fs/yahoo_ad_api/yahoo_ad_api.yml")
  yahoo_srv = yahoo.service(:LocationService, API_VERSION)
  puts yahoo_srv.get(1000003244)
end

if __FILE__ == $0
  API_VERSION = :V5_1
  begin
    get_location
  rescue => e
    puts e
  end
end
