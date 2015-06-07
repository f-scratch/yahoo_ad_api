require 'shampoohat/credential_handler'
require 'yahoo_ad_api/api_config'

module YahooAdApi
  class CredentialHandler < Shampoohat::CredentialHandler
    # Whether we're making validate-only requests.
    attr_accessor :validate_only
    # Whether we're making partial failure requests.
    attr_accessor :partial_failure

    def initialize(config)
      super(config)
      @validate_only = false
      @partial_failure = false
    end

    # Create the list of credentials to be used by the auth handler for header
    # generation.
    def credentials(credentials_override = nil)
      result = super(credentials_override)
      # validate_headers_for_server(result)

      extra_headers = {
        'userAgent' => generate_user_agent(),
        'developerToken' => result[:developer_token]
      }
      extra_headers['clientCustomerId'] = result[:client_customer_id]
      extra_headers['validateOnly'] = 'true' if @validate_only
      extra_headers['partialFailure'] = 'true' if @partial_failure
      result[:extra_headers] = extra_headers
      return result
    end

    # Generates string to use as user agent in headers.
    def generate_user_agent(extra_ids = [])
      agent_app = @config.read('authentication.user_agent')
      extra_ids << ['AwApi-Ruby/%s' % YahooAdApi::ApiConfig::CLIENT_LIB_VERSION]
      super(extra_ids, agent_app)
    end

    private

    # Validates that the right credentials are being used for the chosen
    # environment.
    #
    # Raises:
    # - YahooAdApi::Errors:BadCredentialsError if supplied credentials are not
    # valid.
    #
    def validate_headers_for_server(credentials)
      client_customer_id = credentials[:client_customer_id]
      unless client_customer_id
        raise YahooAdApi::Errors::BadCredentialsError,
            'Missing client customer ID for the request.'
      end

      if !(client_customer_id.is_a?(Integer) or
          (client_customer_id =~ /^\d+(-\d+-\d+)?$/))
        raise YahooAdApi::Errors::BadCredentialsError,
            'Invalid client customer ID: %s' % client_customer_id.to_s
      end

      token = credentials[:developer_token]
      if token.nil? || token.empty?
        raise YahooAdApi::Errors::BadCredentialsError,
            'Developer token is missing, check credentials.'
      end
      return nil
    end
  end
end
