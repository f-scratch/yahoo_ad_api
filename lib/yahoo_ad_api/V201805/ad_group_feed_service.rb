# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2018-05-26 08:14:42.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V201805/ad_group_feed_service_registry'

module YahooAdApi; module V201805; module AdGroupFeedService
  class AdGroupFeedService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V201805/AdGroupFeed'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V201805, default_ns)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return AdGroupFeedServiceRegistry
    end

    def get_module()
      return YahooAdApi::V201805::AdGroupFeedService
    end
  end
end; end; end
