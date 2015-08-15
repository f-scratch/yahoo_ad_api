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
    DEFAULT_VERSION = :V5_2
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :V5_2
    DEFAULT_NS = :ns1

    # Set other constants
    API_NAME = 'YahooAdApi'
    DEFAULT_CONFIG_FILENAME = 'yahoo_ad_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :V5_1 => [
        :AccountService,
        :AdGroupAdService,
        :AdGroupBidMultiplierService,
        :AdGroupCriterionService,
        :AdGroupFeedService,
        :AdGroupService,
        :BalanceService,
        :BidLandscapeService,
        :BiddingStrategyService,
        :BulkService,
        :CampaignCriterionService,
        :CampaignFeedService,
        :CampaignService,
        :CampaignTargetService,
        :ConversionTrackerService,
        :CustomerSyncService,
        :DictionaryService,
        :FeedItemService,
        :KeywordEstimatorService,
        :LocationService,
        :ReportDefinitionService,
        :ReportService,
        :TargetingIdeaService,
        :TrafficEstimatorService,
      ],
      :V5_2 => [
        :AccountService,
        :AdGroupAdService,
        :AdGroupBidMultiplierService,
        :AdGroupCriterionService,
        :AdGroupFeedService,
        :AdGroupService,
        :BalanceService,
        :BidLandscapeService,
        :BiddingStrategyService,
        :BulkService,
        :CampaignCriterionService,
        :CampaignFeedService,
        :CampaignService,
        :CampaignTargetService,
        :ConversionTrackerService,
        :CustomerSyncService,
        :DictionaryService,
        :FeedItemService,
        :KeywordEstimatorService,
        :LocationService,
        :ReportDefinitionService,
        :ReportService,
        :TargetingIdeaService,
        :TrafficEstimatorService,
      ],
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :SANDBOX => {
        :oauth_scope => 'https://sandbox.ss.yahooapis.jp/services/',
        :header_ns => 'http://ss.yahooapis.jp/V5/',
        :V5_1 => '',
        :V5_2 => '',
      },
      # WSDL location is changed irregularly
      :PRODUCTION => {
        :oauth_scope => 'https://ss.yahooapis.jp/services/',
        :header_ns => 'http://ss.yahooapis.jp/V5/',
        :V5_1 => '',
        :V5_2 => '',
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      [:V5_1, :AccountService] => '',
      [:V5_1, :AdGroupAdService] => '',
      [:V5_1, :AdGroupBidMultiplierService] => '',
      [:V5_1, :AdGroupCriterionService] => '',
      [:V5_1, :AdGroupFeedService] => '',
      [:V5_1, :AdGroupService] => '',
      [:V5_1, :BalanceService] => '',
      [:V5_1, :BidLandscapeService] => '',
      [:V5_1, :BiddingStrategyService] => '',
      [:V5_1, :BulkService] => '',
      [:V5_1, :CampaignCriterionService] => '',
      [:V5_1, :CampaignFeedService] => '',
      [:V5_1, :CampaignService] => '',
      [:V5_1, :CampaignTargetService] => '',
      [:V5_1, :ConversionTrackerService] => '',
      [:V5_1, :CustomerSyncService] => '',
      [:V5_1, :DictionaryService] => '',
      [:V5_1, :FeedItemService] => '',
      [:V5_1, :KeywordEstimatorService] => '',
      [:V5_1, :LocationService] => '',
      [:V5_1, :ReportDefinitionService] => '',
      [:V5_1, :ReportService] => '',
      [:V5_1, :TargetingIdeaService] => '',
      [:V5_1, :TrafficEstimatorService] => '',
      [:V5_2, :AccountService] => '',
      [:V5_2, :AdGroupAdService] => '',
      [:V5_2, :AdGroupBidMultiplierService] => '',
      [:V5_2, :AdGroupCriterionService] => '',
      [:V5_2, :AdGroupFeedService] => '',
      [:V5_2, :AdGroupService] => '',
      [:V5_2, :BalanceService] => '',
      [:V5_2, :BidLandscapeService] => '',
      [:V5_2, :BiddingStrategyService] => '',
      [:V5_2, :BulkService] => '',
      [:V5_2, :CampaignCriterionService] => '',
      [:V5_2, :CampaignFeedService] => '',
      [:V5_2, :CampaignService] => '',
      [:V5_2, :CampaignTargetService] => '',
      [:V5_2, :ConversionTrackerService] => '',
      [:V5_2, :CustomerSyncService] => '',
      [:V5_2, :DictionaryService] => '',
      [:V5_2, :FeedItemService] => '',
      [:V5_2, :KeywordEstimatorService] => '',
      [:V5_2, :LocationService] => '',
      [:V5_2, :ReportDefinitionService] => '',
      [:V5_2, :ReportService] => '',
      [:V5_2, :TargetingIdeaService] => '',
      [:V5_2, :TrafficEstimatorService] => ''
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
      return @@environment_config.include?(environment) ? @@environment_config[environment][key] : nil
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

    def self.default_ns
      DEFAULT_NS
    end

  end
end
