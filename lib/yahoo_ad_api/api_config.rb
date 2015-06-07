require 'shampoohat/api_config'
require 'yahoo_ad_api/version'

module YahooAdApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    # Inherit from Shampoohat::ApiConfig
    class << ApiConfig
      include Shampoohat::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :V5_1
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :V5_1

    # Set other constants
    API_NAME = 'YahooAdApi'
    DEFAULT_CONFIG_FILENAME = 'yahoo_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :V5_1 => [
        # 'AccountService',
        # 'AdGroupAdService',
        # 'AdGroupBidMultiplierService',
        # 'AdGroupCriterionService',
        # 'AdGroupFeedService',
        # 'AdGroupService',
        # 'BalanceService',
        # 'BidLandscapeService',
        # 'BiddingStrategyService',
        # 'BulkService',
        # 'CampaignCriterionService',
        # 'CampaignFeedService',
        # 'CampaignService',
        # 'CampaignTargetService',
        # 'ConversionTrackerService',
        # 'CustomerSyncService',
        # 'DictionaryService',
        # 'FeedItemService',
        # 'KeywordEstimatorService',
        :LocationService,
        # 'ReportDefinitionService',
        # 'ReportService',
        # 'TargetingIdeaService',
        # 'TrafficEstimatorService',
      ],
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://sandbox.ss.yahooapis.jp/services',
        :header_ns => 'http://ss.yahooapis.jp/V5/',
        :V5_1 => 'https://sandbox.ss.yahooapis.jp/services/',
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      [:V5_1, :LocationService] => ''
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.default_environment
      DEFAULT_ENVIRONMENT
    end

    def self.latest_version
      LATEST_VERSION
    end

    def self.api_name
      API_NAME
    end

    def self.service_config
      @@service_config
    end

    def self.environment_config(environment, key)
      return @@environment_config.include?(environment) ?
          @@environment_config[environment][key] : nil
    end

    def self.subdir_config
      @@subdir_config
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end

    def self.headers_config
      @@headers_config
    end

    # Get the download URL for Ad Hoc reports.
    #
    # Args:
    # - environment: the service environment to be used
    # - version: the API version (as a symbol)
    #
    # Returns:
    # - The endpoint URL (as a string)
    #
    def self.adhoc_report_download_url(environment, version)
      base = get_wsdl_base(environment, version)
      if base
        base += 'reportdownload/%s' % version.to_s
      end
      return base
    end
  end
end
