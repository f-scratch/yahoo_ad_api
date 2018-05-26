# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2018-05-26 08:14:47.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V201805/dictionary_service_registry'

module YahooAdApi; module V201805; module DictionaryService
  class DictionaryService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V201805/Dictionary'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V201805, default_ns)
    end

    def get_disapproval_reason(*args, &block)
      return execute_action('get_disapproval_reason', args, &block)
    end

    def get_disapproval_reason_to_xml(*args)
      return get_soap_xml('get_disapproval_reason', args)
    end

    def get_geographic_location(*args, &block)
      return execute_action('get_geographic_location', args, &block)
    end

    def get_geographic_location_to_xml(*args)
      return get_soap_xml('get_geographic_location', args)
    end

    private

    def get_service_registry()
      return DictionaryServiceRegistry
    end

    def get_module()
      return YahooAdApi::V201805::DictionaryService
    end
  end
end; end; end
