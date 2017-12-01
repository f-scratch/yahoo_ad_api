require 'spec_helper'

RSpec.describe 'LocationService' do
  include_context 'stub.helper.v6.4.success'
  include_context 'config.helper.v6.4'

  let(:yahoo_ad_api) { YahooAdApi::Api.new(api_config) }
  let(:service) { yahoo_ad_api.service(:LocationService, api_version) }

  describe '#get' do
    before do
      yahoo_ad_api.header_info = header_info
      yahoo_ad_api.location_url = ''
    end
    subject { service.get(account_id) }
    it { is_expected.to match({ operation_succeeded: true, value: "sandbox.ss.yahooapis.jp" }) }
  end
end
