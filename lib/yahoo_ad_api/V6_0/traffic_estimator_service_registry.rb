# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.2 on 2016-08-17 14:30:33.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_0; module TrafficEstimatorService
  class TrafficEstimatorServiceRegistry
    TRAFFICESTIMATORSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"TrafficEstimatorSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"TrafficEstimatorPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    TRAFFICESTIMATORSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TrafficEstimatorSelector=>{:fields=>[{:name=>:estimate_request, :type=>"EstimateRequest", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :EstimateRequest=>{:fields=>[{:name=>:target, :type=>"EstimateTarget", :min_occurs=>1, :max_occurs=>1}, {:name=>:keyword, :type=>"ProposalKeyword", :min_occurs=>1, :max_occurs=>1}, {:name=>:bid, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:platform, :type=>"ProposalPlatformTarget", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:wap, :type=>"WapType", :min_occurs=>0, :max_occurs=>1}]}, :EstimateTarget=>{:fields=>[{:name=>:network, :type=>"EstimateNetwork", :min_occurs=>1, :max_occurs=>1}, {:name=>:mobile_carrier, :type=>"CarrierName", :min_occurs=>0, :max_occurs=>1}, {:name=>:province, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProposalKeyword=>{:fields=>[{:name=>:type, :type=>"CriterionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}]}, :ProposalPlatformTarget=>{:fields=>[{:name=>:platform_name, :type=>"ProposalPlatformType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :TrafficEstimatorPage=>{:fields=>[{:name=>:values, :type=>"EstimateValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :TrafficEstimateResult=>{:fields=>[{:name=>:type, :type=>"EstimateResultType", :min_occurs=>1, :max_occurs=>1}, {:name=>:keyword, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:rank, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpc, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :EstimateValues=>{:fields=>[{:name=>:data, :type=>"TrafficEstimateResult", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ReturnValue"}, :TotalEstimateResult=>{:fields=>[{:name=>:carrier, :type=>"CarrierName", :min_occurs=>0, :max_occurs=>1}], :base=>"TrafficEstimateResult"}, :DesktopEstimateResult=>{:fields=>[], :base=>"TrafficEstimateResult"}, :SmartPhoneEstimateResult=>{:fields=>[], :base=>"TrafficEstimateResult"}, :WapMobileEstimateResult=>{:fields=>[{:name=>:carrier, :type=>"CarrierName", :min_occurs=>0, :max_occurs=>1}], :base=>"TrafficEstimateResult"}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ProposalPlatformType=>{:fields=>[]}, :EstimateNetwork=>{:fields=>[]}, :CarrierName=>{:fields=>[]}, :CriterionType=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :WapType=>{:fields=>[]}, :EstimateResultType=>{:fields=>[]}}
    TRAFFICESTIMATORSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return TRAFFICESTIMATORSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return TRAFFICESTIMATORSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return TRAFFICESTIMATORSERVICE_NAMESPACES[index]
    end
  end
end; end; end