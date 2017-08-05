shared_context 'stub.helper.v6.3.error' do
  before do
    unless WebMock.net_connect_allowed?
      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V6.3/ReportDefinitionService")
        .with(
          body: /\<ns1\:mutate/
        )
        .to_return(
          body: File.new('spec/fixtures/files/report_definition_service/mutate_fail.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )

      stub_request(:post, "https://sandbox.ss.yahooapis.jp/services/V6.3/ReportService")
        .with(
          body: /\<ns1\:get/
        )
        .to_return(
          body: File.new('spec/fixtures/files/report_service/get_fail.xml').read,
          status: 200,
          headers: { 'Content-Type' => 'text/xml; charset=utf-8' }
        )
    end
  end
end
