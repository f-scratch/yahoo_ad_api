# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2018-05-26 08:14:46.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201805; module CampaignSharedSetService
  class CampaignSharedSetServiceRegistry
    CAMPAIGNSHAREDSETSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"CampaignSharedSetSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignSharedSetPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignSharedSetOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignSharedSetReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CAMPAIGNSHAREDSETSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :CampaignSharedSet=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:shared_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:shared_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CampaignSharedSetSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:shared_list_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :CampaignSharedSetPage=>{:fields=>[{:name=>:values, :type=>"CampaignSharedSetValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignSharedSetValues=>{:fields=>[{:name=>:campaign_shared_set, :type=>"CampaignSharedSet", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :CampaignSharedSetOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"CampaignSharedSet", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :CampaignSharedSetReturnValue=>{:fields=>[{:name=>:values, :type=>"CampaignSharedSetValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :Operator=>{:fields=>[]}}
    CAMPAIGNSHAREDSETSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201805"]

    def self.get_method_signature(method_name)
      return CAMPAIGNSHAREDSETSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNSHAREDSETSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNSHAREDSETSERVICE_NAMESPACES[index]
    end
  end
end; end; end
