# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2017-08-04 20:58:10.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_3; module AdGroupCriterionService
  class AdGroupCriterionServiceRegistry
    ADGROUPCRITERIONSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"AdGroupCriterionSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdGroupCriterionPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdGroupCriterionOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdGroupCriterionReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    ADGROUPCRITERIONSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupCriterionSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:criterion_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:criterion_use, :type=>"AdGroupCriterionUse", :min_occurs=>1, :max_occurs=>1}, {:name=>:user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bidding_strategy_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:approval_statuses, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advanced, :type=>"Advanced", :min_occurs=>0, :max_occurs=>1}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :AdGroupCriterionPage=>{:fields=>[{:name=>:values, :type=>"AdGroupCriterionValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdGroupCriterionValues=>{:fields=>[{:name=>:ad_group_criterion, :type=>"AdGroupCriterion", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :AdGroupCriterion=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_use, :type=>"AdGroupCriterionUse", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion, :type=>"Criterion", :min_occurs=>0, :max_occurs=>1}]}, :NegativeAdGroupCriterion=>{:fields=>[], :base=>"AdGroupCriterion"}, :Criterion=>{:fields=>[{:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"CriterionType", :min_occurs=>0, :max_occurs=>1}]}, :Keyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :BiddableAdGroupCriterion=>{:fields=>[{:name=>:user_status, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reason_codes, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_configuration, :type=>"AdGroupCriterionBiddingStrategy", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_failed_reason, :type=>"BiddingStrategyFailedReason", :min_occurs=>0, :max_occurs=>1}, {:name=>:failed_bidding_strategy_configuration, :type=>"AdGroupCriterionBiddingStrategy", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_advanced_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_advanced_urls, :type=>"AdGroupCriterionAdditionalAdvancedUrls", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced_mobile_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_advanced_mobile_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_advanced_mobile_urls, :type=>"AdGroupCriterionAdditionalAdvancedMobileUrls", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced, :type=>"Advanced", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupCriterion"}, :AdGroupCriterionAdditionalAdvancedUrls=>{:fields=>[{:name=>:additional_advanced_url, :type=>"AdGroupCriterionAdditionalUrl", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_remove, :type=>"IsRemove", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupCriterionAdditionalAdvancedMobileUrls=>{:fields=>[{:name=>:additional_advanced_mobile_url, :type=>"AdGroupCriterionAdditionalUrl", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_remove, :type=>"IsRemove", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupCriterionAdditionalUrl=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reason_codes, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CustomParameters=>{:fields=>[{:name=>:is_remove, :type=>"IsRemove", :min_occurs=>0, :max_occurs=>1}, {:name=>:parameters, :type=>"CustomParameter", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CustomParameter=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupCriterionBiddingStrategy=>{:fields=>[{:name=>:bidding_strategy_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_source, :type=>"BiddingStrategySource", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_scheme, :type=>"BiddingScheme", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_bidding_strategy_configurations, :type=>"AdGroupCriterionBiddingStrategy", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BiddingScheme=>{:fields=>[{:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ManualCpcBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :BudgetOptimizerBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :EnhancedCpcBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :PageOnePromotedBiddingScheme=>{:fields=>[{:name=>:target_position_type, :type=>"TargetPositionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"BidChangesForRaisesOnly", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_budget_constrained, :type=>"RaiseBidWhenBudgetConstrained", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"RaiseBidWhenLowQualityScore", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetCpaBiddingScheme=>{:fields=>[{:name=>:target_cpa, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetSpendBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:spend_target, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetRoasBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Bid=>{:fields=>[{:name=>:max_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_max_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:keyword_max_cpc, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupCriterionOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"AdGroupCriterion", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :AdGroupCriterionReturnValue=>{:fields=>[{:name=>:values, :type=>"AdGroupCriterionValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdGroupCriterionUse=>{:fields=>[]}, :UserStatus=>{:fields=>[]}, :ApprovalStatus=>{:fields=>[]}, :CriterionType=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :Advanced=>{:fields=>[]}, :IsRemove=>{:fields=>[]}, :BiddingStrategyFailedReason=>{:fields=>[]}, :BiddingStrategyType=>{:fields=>[]}, :BiddingStrategySource=>{:fields=>[]}, :TargetPositionType=>{:fields=>[]}, :BidChangesForRaisesOnly=>{:fields=>[]}, :RaiseBidWhenBudgetConstrained=>{:fields=>[]}, :RaiseBidWhenLowQualityScore=>{:fields=>[]}, :BidSource=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    ADGROUPCRITERIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPCRITERIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPCRITERIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPCRITERIONSERVICE_NAMESPACES[index]
    end
  end
end; end; end
