# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.1 on 2015-06-13 15:40:47.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V5_2; module BalanceService
  class BalanceServiceRegistry
    BALANCESERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"BalanceSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"BalancePage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    BALANCESERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :BalanceSelector=>{:fields=>[{:name=>:account_ids, :type=>"long", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :BalancePage=>{:fields=>[{:name=>:values, :type=>"BalanceValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :BalanceValues=>{:fields=>[{:name=>:balance, :type=>"Balance", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :Balance=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:balance, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}}
    BALANCESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return BALANCESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BALANCESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BALANCESERVICE_NAMESPACES[index]
    end
  end
end; end; end
