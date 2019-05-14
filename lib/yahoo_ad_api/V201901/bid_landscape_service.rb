# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:42.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V201901/bid_landscape_service_registry'

module YahooAdApi; module V201901; module BidLandscapeService
  class BidLandscapeService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V201901/BidLandscape'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V201901, default_ns)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    private

    def get_service_registry()
      return BidLandscapeServiceRegistry
    end

    def get_module()
      return YahooAdApi::V201901::BidLandscapeService
    end
  end
end; end; end
