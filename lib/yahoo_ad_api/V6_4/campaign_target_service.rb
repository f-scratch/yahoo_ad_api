# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2017-11-22 09:47:09.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V6_4/campaign_target_service_registry'

module YahooAdApi; module V6_4; module CampaignTargetService
  class CampaignTargetService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V6'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V6_4, default_ns)
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
      return CampaignTargetServiceRegistry
    end

    def get_module()
      return YahooAdApi::V6_4::CampaignTargetService
    end
  end
end; end; end