require 'spec_helper'
require 'yahoo_ad_api/api_config'

RSpec.describe YahooAdApi::ApiConfig do
  include_context 'config.helper.v6.3'

  describe '.do_require' do
    subject { described_class.do_require(api_version, :LocationService) }
    it { is_expected.to eq "yahoo_ad_api/#{api_version}/location_service" }
  end

  describe '.module_name' do
    subject { described_class.module_name(api_version, :LocationService) }
    it { is_expected.to eq "YahooAdApi::#{api_version}::LocationService" }
  end

  describe '.interface_name' do
    subject { described_class.interface_name(api_version, :LocationService) }
    it { is_expected.to eq "YahooAdApi::#{api_version}::LocationService::LocationService" }
  end
end
