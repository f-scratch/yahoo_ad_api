# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.2 on 2017-02-04 09:28:14.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V6_2/campaign_feed_service_registry'

module YahooAdApi; module V6_2; module CampaignFeedService
  class CampaignFeedService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V6'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V6_2, default_ns)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return CampaignFeedServiceRegistry
    end

    def get_module()
      return YahooAdApi::V6_2::CampaignFeedService
    end
  end
end; end; end
