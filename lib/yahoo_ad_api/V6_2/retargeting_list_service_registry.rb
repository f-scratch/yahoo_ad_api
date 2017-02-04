# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.2 on 2017-02-04 09:28:21.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_2; module RetargetingListService
  class RetargetingListServiceRegistry
    RETARGETINGLISTSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"RetargetingListSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"RetargetingListPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"RetargetingListOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"RetargetingListReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    RETARGETINGLISTSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TargetingList=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:retargeting_account_status, :type=>"RetargetingAccountStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_list_type, :type=>"TargetListType", :min_occurs=>1, :max_occurs=>1}, {:name=>:target_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_list_description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:reach_storage_status, :type=>"ReachStorageStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:reach_storage_span, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:reach, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_list_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :RetargetingAccountStatus=>{:fields=>[{:name=>:agree_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_status, :type=>"ReviewStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_request_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DefaultTargetList=>{:fields=>[{:name=>:tag, :type=>"Tag", :min_occurs=>0, :max_occurs=>1}], :base=>"TargetingList"}, :Tag=>{:fields=>[{:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :RuleBaseTargetList=>{:fields=>[{:name=>:rules, :type=>"RuleGroup", :min_occurs=>0, :max_occurs=>20}, {:name=>:is_all_visitor, :type=>"IsAllVisitorRule", :min_occurs=>1, :max_occurs=>1}, {:name=>:is_date_specific, :type=>"IsDateSpecificRule", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"TargetingList"}, :RuleGroup=>{:fields=>[{:name=>:rule_items, :type=>"RuleItem", :min_occurs=>1, :max_occurs=>20}]}, :RuleItem=>{:fields=>[{:name=>:rule_type, :type=>"RuleType", :min_occurs=>1, :max_occurs=>1}, {:name=>:operator, :type=>"RuleOperator", :min_occurs=>1, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>1, :max_occurs=>1}]}, :UrlRuleItem=>{:fields=>[{:name=>:url_key, :type=>"UrlRuleKey", :min_occurs=>1, :max_occurs=>1}], :base=>"RuleItem"}, :LogicalTargetList=>{:fields=>[{:name=>:logical_group, :type=>"LogicalGroup", :min_occurs=>1, :max_occurs=>20}], :base=>"TargetingList"}, :LogicalGroup=>{:fields=>[{:name=>:condition, :type=>"LogicalCondition", :min_occurs=>0, :max_occurs=>1}, {:name=>:logical_operand, :type=>"LogicalRuleOperand", :min_occurs=>1, :max_occurs=>20}]}, :LogicalRuleOperand=>{:fields=>[{:name=>:target_list_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}]}, :RetargetingListSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:target_list_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_list_types, :type=>"TargetListType", :min_occurs=>0, :max_occurs=>3}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :RetargetingListPage=>{:fields=>[{:name=>:values, :type=>"RetargetingListValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :RetargetingListValues=>{:fields=>[{:name=>:target_list, :type=>"TargetingList", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :RetargetingListOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"TargetingList", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :RetargetingListReturnValue=>{:fields=>[{:name=>:values, :type=>"RetargetingListValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :TargetListType=>{:fields=>[]}, :ReviewStatus=>{:fields=>[]}, :ReachStorageStatus=>{:fields=>[]}, :IsAllVisitorRule=>{:fields=>[]}, :IsDateSpecificRule=>{:fields=>[]}, :RuleType=>{:fields=>[]}, :RuleOperator=>{:fields=>[]}, :UrlRuleKey=>{:fields=>[]}, :LogicalCondition=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    RETARGETINGLISTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return RETARGETINGLISTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return RETARGETINGLISTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return RETARGETINGLISTSERVICE_NAMESPACES[index]
    end
  end
end; end; end
