# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.1 on 2015-06-13 15:40:45.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V5_1/report_service_registry'

module YahooAdApi; module V5_1; module ReportService
  class ReportService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V5'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V5_1, default_ns)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_download_url(*args, &block)
      return execute_action('get_download_url', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return ReportServiceRegistry
    end

    def get_module()
      return YahooAdApi::V5_1::ReportService
    end
  end
end; end; end
