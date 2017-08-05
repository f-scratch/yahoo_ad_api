shared_context 'config.helper.v6.3' do
  let(:api_version) { :V6_3 }

  let(:api_license) { '1000-2000-3000-4000' }
  let(:api_account_id) { '1234-5678-1234-5678' }
  let(:api_account_password) { 'api_account_password' }
  let(:api_env) { 'SANDBOX' }
  let(:account_id) { '2000000000' }
  let(:application_id) { 'application_id' }
  let(:password) { 'abcd1234' }

  let(:location_url) { 'https://sandbox.ss.yahooapis.jp/services/' }

  let(:api_config) do
    {
      authentication: {
        method: :YAHOO,
        license: api_license,
        api_account_id: api_account_id,
        api_account_password: api_account_password
      },
      service: { environment: api_env },
      connection: { enable_gzip: false },
      library: { log_level: 'INFO' }
    }
  end
  let(:header_info) do
    {
      "ns1:license"             => api_license,
      "ns1:apiAccountId"        => api_account_id,
      "ns1:apiAccountPassword"  => api_account_password,
      "ns1:accountId"           => account_id,
      "ns1:onBehalfOfAccountId" => application_id,
      "ns1:onBehalfOfPassword"  => password
    }
  end
end
