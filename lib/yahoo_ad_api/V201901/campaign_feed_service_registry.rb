# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:43.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201901; module CampaignFeedService
  class CampaignFeedServiceRegistry
    CAMPAIGNFEEDSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"CampaignFeedSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignFeedPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignFeedOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignFeedReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CAMPAIGNFEEDSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :CampaignFeed=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:placeholder_type, :type=>"CampaignFeedPlaceholderType", :min_occurs=>0, :max_occurs=>1}]}, :CampaignFeedList=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:placeholder_type, :type=>"CampaignFeedPlaceholderType", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_feed, :type=>"CampaignFeed", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:device_platform, :type=>"DevicePlatform", :min_occurs=>0, :max_occurs=>1}]}, :CampaignFeedSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:feed_item_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:placeholder_types, :type=>"CampaignFeedPlaceholderType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :CampaignFeedPage=>{:fields=>[{:name=>:values, :type=>"CampaignFeedValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignFeedValues=>{:fields=>[{:name=>:campaign_feed_list, :type=>"CampaignFeedList", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :CampaignFeedOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"CampaignFeedList", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :CampaignFeedReturnValue=>{:fields=>[{:name=>:values, :type=>"CampaignFeedValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :CampaignFeedPlaceholderType=>{:fields=>[]}, :DevicePlatform=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    CAMPAIGNFEEDSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201901"]

    def self.get_method_signature(method_name)
      return CAMPAIGNFEEDSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNFEEDSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNFEEDSERVICE_NAMESPACES[index]
    end
  end
end; end; end
