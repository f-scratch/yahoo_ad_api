shared_context 'stub.helper.V201805.error' do
  before do
    unless WebMock.net_connect_allowed?
      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201805/ReportDefinitionService")
        .with(
          body: /\<ns1\:mutate/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201805/report_definition_service/mutate_fail.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V201805/ReportService")
        .with(
          body: /\<ns1\:get/
        )
        .to_return(
          body: File.new('spec/fixtures/files/V201805/report_service/get_fail.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )
    end
  end
end
