require 'spec_helper'

RSpec.describe 'ReportDefinitionService' do
  include_context 'stub.helper.V201901.success'
  include_context 'config.helper.V201901'
  include_context 'report.helper.V201901'

  let(:yahoo_ad_api) { YahooAdApi::Api.new(api_config) }
  let(:service) { yahoo_ad_api.service(:ReportDefinitionService, api_version) }

  before do
    yahoo_ad_api.header_info  = header_info
    yahoo_ad_api.location_url = location_url

    # Delete all report definitions
    report_definitions = service.get(report_params)
    unless report_definitions[:values].nil?
      report_definitions[:values].each do |report|
        service.mutate(report_def_deletion_params.merge(operand: { report_id: report[:report_definition][:report_id] }))
      end
    end
  end

  describe '#get' do
    before do
      service.mutate(report_def_creation_params)
    end
    subject { service.get(report_params) }
    it { expect(subject[:values][0][:operation_succeeded]).to be_truthy }
  end

  describe '#get_report_fields' do
#    subject { service.get_report_fields(report_type: report_category_account, lang: lang) }
    subject { service.get_report_fields(report_type: report_category_account) }
    it { expect(subject[:operation_succeeded]).to be_truthy }
    it { expect(subject[:fields].length).to eq 37 }
    it do
      expect(subject[:fields][0]).to match(
        {
          :can_filter => true,
          :can_select => true,
          :display_field_name_en => "Cost",
          :display_field_name_ja => "コスト",
          :field_name => "COST",
          :field_type => "LONG",
          :impossible_combination_fields => ["OBJECT_OF_CONVERSION_TRACKING", "CONVERSION_NAME"],
          :xml_attribute_name => "cost"
        }
      )
    end
  end

  describe '#mutate' do
    context 'when it creates an report' do
      subject { service.mutate(report_def_creation_params) }

      context 'when it successes' do
        it { expect(subject[:values][0][:operation_succeeded]).to eq true }
      end

      context 'when it fails' do
        include_context 'stub.helper.V201901.error'
        let(:report_fields_arr) do
          [
            'CLICKS',
            'CLICK_RATE',
            'DAY',
            'INVALID_COLUMN'
          ]
        end
        it { expect(subject[:values][0][:operation_succeeded]).to eq false }
      end
    end

    context 'when it deletes an report' do
      let(:report_definition_id) { service.mutate(report_def_creation_params)[:values][0][:report_definition][:report_id] }
      subject { service.mutate(report_def_deletion_params.merge(operand: { report_id: report_definition_id })) }
      it { expect(subject[:values][0][:operation_succeeded]).to eq true }
    end
  end
end
