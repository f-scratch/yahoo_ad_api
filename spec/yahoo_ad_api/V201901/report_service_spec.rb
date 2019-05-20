require 'spec_helper'

RSpec.describe 'ReportService' do
  include_context 'stub.helper.V201901.success'
  include_context 'config.helper.V201901'
  include_context 'report.helper.V201901'

  let(:yahoo_ad_api) { YahooAdApi::Api.new(api_config) }
  let(:def_service) { yahoo_ad_api.service(:ReportDefinitionService, api_version) }
  let(:service) { yahoo_ad_api.service(:ReportService, api_version) }

  before do
    yahoo_ad_api.header_info  = header_info
    yahoo_ad_api.location_url = location_url

    # Delete all reports
    reports = service.get(report_params)
    unless reports[:values].nil?
      job_ids_arr = reports[:values].map { |report| { report_job_id: report[:report_record][:report_job_id]} }
      service.mutate(report_deletion_params.merge(operand: job_ids_arr))
    end
  end

  shared_context 'create_report' do
    let(:report_id) do
      def_service.mutate(report_def_creation_params)[:values][0][:report_definition][:report_id]
    end
  end

  describe '#mutate' do
    context 'when it creates an report' do
      include_context 'create_report'
      subject { service.mutate(report_creation_params.merge(operand: [report_id: report_id])) }
      it do
        target = subject[:values][0]
        expect(target[:operation_succeeded]).to eq true
        expect(target[:report_record][:report_job_id]).not_to be_nil
      end
    end
  end

  describe '#get' do
    include_context 'create_report'
    before do
      service.mutate(report_creation_params.merge(operand: [report_id: report_id]))
    end

    subject { service.get(report_params.merge(report_ids: [report_id])) }

    context 'when status is COMPLETED' do
      it { expect(subject[:values][0][:operation_succeeded]).to eq true }

      it 'gets report_download_url ( it takes 5 minutes to finish )' do
        target = service.get(report_params.merge(report_ids: [report_id]))[:values][0]
        until target[:report_record][:report_job_status] == 'COMPLETED'
          print '.'
          sleep(5)
          target = service.get(report_params.merge(report_ids: [report_id]))[:values][0]
        end
        expect(target[:report_record][:report_download_url]).not_to be_nil
      end
    end

    context 'when status is WAIT' do
      include_context 'stub.helper.V201901.error'

      it do
        target = subject[:values][0]
        expect(target[:operation_succeeded]).to eq true
      end

      it 'cannot get report_download_url' do
        target = subject[:values][0]
        expect(target[:report_record][:report_job_status]).to eq 'COMPLETED'
      end
    end
  end
end
