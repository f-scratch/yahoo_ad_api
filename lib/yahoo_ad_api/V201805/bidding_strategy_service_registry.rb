# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2018-05-26 08:14:44.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201805; module BiddingStrategyService
  class BiddingStrategyServiceRegistry
    BIDDINGSTRATEGYSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"BiddingStrategySelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"BiddingStrategyPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"BiddingStrategyOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"BiddingStrategyReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    BIDDINGSTRATEGYSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :BiddingStrategySelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:bidding_strategy_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bidding_strategy_types, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :BiddingStrategyOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"BiddingStrategy", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :BiddingStrategyPage=>{:fields=>[{:name=>:values, :type=>"BiddingStrategyValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :BiddingStrategyReturnValue=>{:fields=>[{:name=>:values, :type=>"BiddingStrategyValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :BiddingStrategyValues=>{:fields=>[{:name=>:bidding_strategy, :type=>"BiddingStrategy", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :BiddingStrategy=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_scheme, :type=>"BiddingScheme", :min_occurs=>0, :max_occurs=>1}]}, :BiddingScheme=>{:fields=>[{:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :EnhancedCpcBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :PageOnePromotedBiddingScheme=>{:fields=>[{:name=>:target_position_type, :type=>"TargetPositionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"BidChangesForRaisesOnly", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_budget_constrained, :type=>"RaiseBidWhenBudgetConstrained", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"RaiseBidWhenLowQualityScore", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetCpaBiddingScheme=>{:fields=>[{:name=>:target_cpa, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetSpendBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:spend_target, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetRoasBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :BiddingStrategyType=>{:fields=>[]}, :Operator=>{:fields=>[]}, :TargetPositionType=>{:fields=>[]}, :BidChangesForRaisesOnly=>{:fields=>[]}, :RaiseBidWhenBudgetConstrained=>{:fields=>[]}, :RaiseBidWhenLowQualityScore=>{:fields=>[]}}
    BIDDINGSTRATEGYSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201805"]

    def self.get_method_signature(method_name)
      return BIDDINGSTRATEGYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BIDDINGSTRATEGYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BIDDINGSTRATEGYSERVICE_NAMESPACES[index]
    end
  end
end; end; end
