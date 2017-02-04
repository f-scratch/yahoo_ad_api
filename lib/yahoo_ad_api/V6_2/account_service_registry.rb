# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.2 on 2017-02-04 09:28:07.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_2; module AccountService
  class AccountServiceRegistry
    ACCOUNTSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"AccountSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AccountPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AccountOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AccountReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    ACCOUNTSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AccountSelector=>{:fields=>[{:name=>:account_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:account_types, :type=>"AccountType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:account_statuses, :type=>"AccountStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :AccountPage=>{:fields=>[{:name=>:values, :type=>"AccountValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AccountValues=>{:fields=>[{:name=>:account, :type=>"Account", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :Account=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_type, :type=>"AccountType", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_status, :type=>"AccountStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_status, :type=>"DeliveryStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"AccountBudget", :min_occurs=>0, :max_occurs=>1}]}, :AccountBudget=>{:fields=>[{:name=>:amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit_charge_type, :type=>"LimitChargeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AccountOperation=>{:fields=>[{:name=>:operand, :type=>"Account", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :AccountReturnValue=>{:fields=>[{:name=>:values, :type=>"AccountValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LimitChargeType=>{:fields=>[]}, :AccountType=>{:fields=>[]}, :DeliveryStatus=>{:fields=>[]}, :AccountStatus=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    ACCOUNTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ACCOUNTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ACCOUNTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ACCOUNTSERVICE_NAMESPACES[index]
    end
  end
end; end; end
