require 'spec_helper'

RSpec.describe YahooAdApi do
  include_context 'config.helper.v6.3'
  let(:yahoo_ad_api) { YahooAdApi::Api.new(api_config) }

  describe '#initialize' do
    it { expect { yahoo_ad_api.service(:LocationService, api_version) }.not_to raise_error }
  end

  describe '#api_config' do
    let(:api_config) { {} }
    subject { yahoo_ad_api.api_config }
    it { is_expected.to eq YahooAdApi::ApiConfig }
  end
end
