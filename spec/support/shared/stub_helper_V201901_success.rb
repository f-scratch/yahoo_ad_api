shared_context 'stub.helper.V201901.success' do
  before do
    unless WebMock.net_connect_allowed?
      # LocationService
      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/LocationService").to_return(
        body: File.new('spec/fixtures/files/V201901/location_service/get.xml').read,
        status: 200,
        headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
      )

      # ReportDefinitionService
      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/ReportDefinitionService")
        .with(
          body: /\<ns1\:get/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201901/report_definition_service/get.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/ReportDefinitionService")
        .with(
          body: /\<ns1\:mutate/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201901/report_definition_service/mutate_success.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/ReportDefinitionService")
        .with(
          body: /\<ns1\:getReportFields/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201901/report_definition_service/get_report_fields.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      # ReportService
      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/ReportService")
        .with(
          body: /\<ns1\:mutate/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201901/report_service/mutate.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201901/ReportService")
        .with(
          body: /\<ns1\:get/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201901/report_service/get_success.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )
    end
  end
end
