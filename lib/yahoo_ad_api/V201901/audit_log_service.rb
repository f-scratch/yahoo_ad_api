# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:41.

require 'shampoohat/savon_service'
require 'yahoo_ad_api/V201901/audit_log_service_registry'

module YahooAdApi; module V201901; module AuditLogService
  class AuditLogService < Shampoohat::SavonService
    def initialize(config, endpoint)
      namespace = 'http://ss.yahooapis.jp/V201901/AuditLog'
      default_ns = 'ns1'
      super(config, endpoint, namespace, :V201901, default_ns)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def add_job(*args, &block)
      return execute_action('add_job', args, &block)
    end

    def add_job_to_xml(*args)
      return get_soap_xml('add_job', args)
    end

    private

    def get_service_registry()
      return AuditLogServiceRegistry
    end

    def get_module()
      return YahooAdApi::V201901::AuditLogService
    end
  end
end; end; end
