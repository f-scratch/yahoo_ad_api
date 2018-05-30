# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2018-05-26 08:14:46.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201805; module CampaignRetargetingListService
  class CampaignRetargetingListServiceRegistry
    CAMPAIGNRETARGETINGLISTSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"CampaignRetargetingListSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignRetargetingListPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignRetargetingListOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignRetargetingListReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CAMPAIGNRETARGETINGLISTSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :CampaignRetargetingList=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_target_list, :type=>"CriterionTargetList", :min_occurs=>1, :max_occurs=>1}, {:name=>:excluded_type, :type=>"ExcludedType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :CriterionTargetList=>{:fields=>[{:name=>:target_list_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:target_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retargeting_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CampaignRetargetingListSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_list_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_type, :type=>"ExcludedType", :min_occurs=>0, :max_occurs=>1}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :CampaignRetargetingListPage=>{:fields=>[{:name=>:values, :type=>"CampaignRetargetingListValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignRetargetingListValues=>{:fields=>[{:name=>:campaign_retargeting_list, :type=>"CampaignRetargetingList", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :CampaignRetargetingListOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"CampaignRetargetingList", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :CampaignRetargetingListReturnValue=>{:fields=>[{:name=>:values, :type=>"CampaignRetargetingListValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :ExcludedType=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    CAMPAIGNRETARGETINGLISTSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201805"]

    def self.get_method_signature(method_name)
      return CAMPAIGNRETARGETINGLISTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNRETARGETINGLISTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNRETARGETINGLISTSERVICE_NAMESPACES[index]
    end
  end
end; end; end
