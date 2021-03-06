# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:43.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V201901/campaign_label_service_registry'

module YahooAdApi; module V201901; module CampaignLabelService
  class CampaignLabelService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V201901/CampaignLabel'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V201901, default_ns)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return CampaignLabelServiceRegistry
    end

    def get_module()
      return YahooAdApi::V201901::CampaignLabelService
    end
  end
end; end; end
