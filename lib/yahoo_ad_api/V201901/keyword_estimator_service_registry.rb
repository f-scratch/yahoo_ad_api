# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:46.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201901; module KeywordEstimatorService
  class KeywordEstimatorServiceRegistry
    KEYWORDESTIMATORSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"KeywordEstimatorSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"KeywordEstimatorPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    KEYWORDESTIMATORSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :KeywordEstimatorSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_estimate_request, :type=>"CampaignEstimateRequest", :min_occurs=>1, :max_occurs=>1}]}, :CampaignEstimateRequest=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_estimate_requests, :type=>"adGroupEstimateRequest", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:provinces, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:daily_budget, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :adGroupEstimateRequest=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:keyword_estimate_requests, :type=>"keywordEstimateRequest", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:max_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :keywordEstimateRequest=>{:fields=>[{:name=>:keyword, :type=>"EstimateKeyword", :min_occurs=>1, :max_occurs=>1}, {:name=>:is_negative, :type=>"IsNegativeBool", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :EstimateKeyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>1, :max_occurs=>1}]}, :KeywordEstimatorPage=>{:fields=>[{:name=>:values, :type=>"KeywordEstimateValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :KeywordEstimateResult=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:keyword, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:min, :type=>"EstimateResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"EstimateResult", :min_occurs=>0, :max_occurs=>1}]}, :EstimateResult=>{:fields=>[{:name=>:clicks, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:rank, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpc, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctr, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :KeywordEstimateValues=>{:fields=>[{:name=>:data, :type=>"KeywordEstimateResult", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :KeywordMatchType=>{:fields=>[]}, :IsNegativeBool=>{:fields=>[]}}
    KEYWORDESTIMATORSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201901"]

    def self.get_method_signature(method_name)
      return KEYWORDESTIMATORSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return KEYWORDESTIMATORSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return KEYWORDESTIMATORSERVICE_NAMESPACES[index]
    end
  end
end; end; end
