# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:42.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201901; module BidLandscapeService
  class BidLandscapeServiceRegistry
    BIDLANDSCAPESERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"BidLandscapeSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"BidLandscapePage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    BIDLANDSCAPESERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :BidLandscapeSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:criterion_ids, :type=>"long", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:sim_type, :type=>"SimType", :min_occurs=>1, :max_occurs=>1}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :BidLandscapePage=>{:fields=>[{:name=>:values, :type=>"BidLandscapeValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :BidLandscapeValues=>{:fields=>[{:name=>:data, :type=>"BidLandscape", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :BidLandscape=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:landscape_points, :type=>"LandscapePoints", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bid_landscape_type, :original_name=>"BidLandscape.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdGroupBidLandscape=>{:fields=>[{:name=>:type, :type=>"AdGroupBidLandscapeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:landscape_current, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BidLandscape"}, :CriterionBidLandscape=>{:fields=>[{:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BidLandscape"}, :LandscapePoints=>{:fields=>[{:name=>:bid, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:marginal_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :SimType=>{:fields=>[]}, :AdGroupBidLandscapeType=>{:fields=>[]}}
    BIDLANDSCAPESERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201901"]

    def self.get_method_signature(method_name)
      return BIDLANDSCAPESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BIDLANDSCAPESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BIDLANDSCAPESERVICE_NAMESPACES[index]
    end
  end
end; end; end
