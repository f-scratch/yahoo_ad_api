require 'shampoohat/api'
require 'shampoohat/savon_headers/yahoo_header_handler'
require 'yahoo_ad_api/api_config'
require 'yahoo_ad_api/credential_handler'
require 'yahoo_ad_api/errors'

# Main namespace for all the client library's modules and classes.
module YahooAdApi

  class Api < Shampoohat::Api

    attr_reader :header_info, :location_url

    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = YahooAdApi::CredentialHandler.new(@config)
      @header_info = nil
      @location_url = nil
    end

    # Getter for the API service configurations
    def api_config()
      YahooAdApi::ApiConfig
    end

    # Retrieve correct soap_header_handler.
    #
    # Args:
    # - auth_handler: instance of an Shampoohat::Auth::BaseHandler subclass to
    #   handle authentication
    # - version: intended API version
    # - header_ns: header namespace
    # - default_ns: default namespace
    #
    # Returns:
    # - SOAP header handler
    #
    def soap_header_handler(auth_handler, version, header_ns, default_ns)
      auth_method = @config.read('authentication.method', :YAHOO)
      handler_class = case auth_method
        when :YAHOO
          Shampoohat::SavonHeaders::YahooHeaderHandler
        else
          raise Shampoohat::Errors::AuthError,
              "Unknown auth method: %s" % auth_method
        end
      return handler_class.new(@credential_handler, auth_handler, header_ns,
                                  default_ns, version, header_info)
    end

    # Helper method to provide a simple way of doing a validate-only operation
    # without the need to change credentials. Executes a block of code as an
    # validate-only operation and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a validate-only operation
    #
    # Returns:
    # - block execution result, if block given
    # - boolean indicating whether validate-only operations are currently
    #   enabled or disabled, if no block provided
    #
    def validate_only(&block)
      return (block_given?) ?
        run_with_temporary_flag(:@validate_only, true, block) :
        @credential_handler.validate_only
    end

    # Helper method to provide a simple way of performing validate-only
    # operations. Sets the value of the property
    # that controls whether validate-only operations are enabled or disabled.
    #
    # Args:
    # - value: the new value for the property (boolean)
    #
    def validate_only=(value)
      @credential_handler.validate_only = value
    end

    # Helper method to skip the report header when downloading reports.
    #
    # Args:
    # - value: whether to skip the report header (boolean)
    #
    def skip_report_header=(value)
      @config.set('library.skip_report_header', value)
    end

    # Helper method to skip the report summary when downloading reports.
    #
    # Args:
    # - value: whether to skip the report summary (boolean)
    #
    def skip_report_summary=(value)
      @config.set('library.skip_report_summary', value)
    end

    # Helper method to skip the column header when downloading reports.
    #
    # Args:
    # - value: whether to skip the column header (boolean)
    #
    def skip_column_header=(value)
      @config.set('library.skip_column_header', value)
    end

    # Helper method to provide a simple way of performing requests with support
    # for partial failures. Executes a block of code with partial failures
    # enabled and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a partial failure operation
    #
    # Returns:
    # - block execution result, if block given
    # - boolean indicating whether partial failure operations are currently
    # enabled or disabled, if no block provided
    #
    def partial_failure(&block)
      return (block_given?) ?
        run_with_temporary_flag(:@partial_failure, true, block) :
        @credential_handler.partial_failure
    end

    # Helper method to provide a simple way of performing requests with support
    # for partial failures.
    #
    # Args:
    # - value: the new value for the property (boolean)
    #
    def partial_failure=(value)
      @credential_handler.partial_failure = value
    end

    def header_info=(value)
      @header_info = value
    end

    def location_url=(value)
      @location_url = value
    end

    private

    # Executes block with a temporary flag set to a given value. Returns block
    # result.
    def run_with_temporary_flag(flag_name, flag_value, block)
      previous = @credential_handler.instance_variable_get(flag_name)
      @credential_handler.instance_variable_set(flag_name, flag_value)
      begin
        return block.call
      ensure
        @credential_handler.instance_variable_set(flag_name, previous)
      end
    end
  end
end
