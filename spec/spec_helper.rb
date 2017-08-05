$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

Dir['./spec/support/**/*.rb'].sort.each { |f| require f }

require 'yahoo_ad_api'
require 'webmock/rspec'

# NOTE : 実際に、net_connectしたい場合は、コメントアウト
# - その際は、spec/support/shared/config_helper_v6.3.rb の接続情報を正しい値に編集すること
# WebMock.allow_net_connect!
