# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.6 on 2017-08-04 20:58:17.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_3; module TargetingIdeaService
  class TargetingIdeaServiceRegistry
    TARGETINGIDEASERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"TargetingIdeaSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"TargetingIdeaPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    TARGETINGIDEASERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TargetingIdeaSelector=>{:fields=>[{:name=>:search_parameter, :type=>"SearchParameter", :min_occurs=>1, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :SearchParameter=>{:fields=>[{:name=>:search_parameter_use, :type=>"SearchParameterUse", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :RelatedToKeywordSearchParameter=>{:fields=>[{:name=>:keywords, :type=>"ProposalKeyword", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :RelatedToUrlSearchParameter=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>1, :max_occurs=>1}], :base=>"SearchParameter"}, :ProposalKeyword=>{:fields=>[{:name=>:type, :type=>"CriterionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}]}, :TargetingIdeaPage=>{:fields=>[{:name=>:values, :type=>"TargetingIdeaValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :TargetingIdeaValues=>{:fields=>[{:name=>:data, :type=>"TypeAttributeMapEntry", :min_occurs=>0, :max_occurs=>1}]}, :TypeAttributeMapEntry=>{:fields=>[{:name=>:key, :type=>"AttributeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Attribute", :min_occurs=>0, :max_occurs=>1}]}, :Attribute=>{:fields=>[{:name=>:attribute_type, :type=>"AttributeType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :KeywordAttribute=>{:fields=>[{:name=>:value, :type=>"ProposalKeyword", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :SearchParameterUse=>{:fields=>[]}, :CriterionType=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :AttributeType=>{:fields=>[]}}
    TARGETINGIDEASERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return TARGETINGIDEASERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return TARGETINGIDEASERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return TARGETINGIDEASERVICE_NAMESPACES[index]
    end
  end
end; end; end
