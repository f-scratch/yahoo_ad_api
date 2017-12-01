# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2017-11-22 09:47:10.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_4; module DictionaryService
  class DictionaryServiceRegistry
    DICTIONARYSERVICE_METHODS = {:get_disapproval_reason=>{:input=>[{:name=>:selector, :type=>"DisapprovalReasonSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_disapproval_reason_response", :fields=>[{:name=>:rval, :type=>"DisapprovalReasonPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_geographic_location=>{:input=>[{:name=>:selector, :type=>"GeographicLocationSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_geographic_location_response", :fields=>[{:name=>:rval, :type=>"GeographicLocationPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    DICTIONARYSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DisapprovalReasonSelector=>{:fields=>[{:name=>:lang, :type=>"DictionaryLang", :min_occurs=>1, :max_occurs=>1}]}, :GeographicLocationSelector=>{:fields=>[{:name=>:lang, :type=>"DictionaryLang", :min_occurs=>1, :max_occurs=>1}]}, :DisapprovalReasonPage=>{:fields=>[{:name=>:values, :type=>"DisapprovalReasonValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :DisapprovalReasonValues=>{:fields=>[{:name=>:disapproval_reason, :type=>"DisapprovalReason", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :DisapprovalReason=>{:fields=>[{:name=>:disapproval_reason_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:lang, :type=>"DictionaryLang", :min_occurs=>0, :max_occurs=>1}, {:name=>:title, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:recommendation, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :GeographicLocationPage=>{:fields=>[{:name=>:values, :type=>"GeographicLocationValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :GeographicLocationValues=>{:fields=>[{:name=>:geographic_location, :type=>"GeographicLocation", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :GeographicLocation=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:full_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:order, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"GeographicLocationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:child, :type=>"GeographicLocation", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :DictionaryLang=>{:fields=>[]}, :GeographicLocationStatus=>{:fields=>[]}}
    DICTIONARYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return DICTIONARYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return DICTIONARYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return DICTIONARYSERVICE_NAMESPACES[index]
    end
  end
end; end; end
