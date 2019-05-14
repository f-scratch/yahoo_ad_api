# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:39.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201901; module AdGroupAdService
  class AdGroupAdServiceRegistry
    ADGROUPADSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"AdGroupAdSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdGroupAdOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    ADGROUPADSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :AdGroupAdSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_types, :type=>"AdType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:approval_statuses, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:label_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:contains_label_id, :type=>"ContainsLabelId", :min_occurs=>0, :max_occurs=>1}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAdPage=>{:fields=>[{:name=>:values, :type=>"AdGroupAdValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdGroupAdValues=>{:fields=>[{:name=>:ad_group_ad, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :AdGroupAd=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:campaign_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:ad_group_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_track_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_status, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:trademark_status, :type=>"TrademarkStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:invalided_trademarks, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:approval_status, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reason_codes, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad, :type=>"Ad", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_folder_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:labels, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Ad=>{:fields=>[{:name=>:type, :type=>"AdType", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_advanced_urls, :type=>"AdGroupAdAdditionalAdvancedUrls", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advanced_mobile_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_advanced_mobile_urls, :type=>"AdGroupAdAdditionalAdvancedMobileUrls", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:headline, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_preference, :type=>"DevicePreference", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAdAdditionalAdvancedUrls=>{:fields=>[{:name=>:advanced_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reason_codes, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdGroupAdAdditionalAdvancedMobileUrls=>{:fields=>[{:name=>:advanced_mobile_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reason_codes, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CustomParameters=>{:fields=>[{:name=>:is_remove, :type=>"IsRemove", :min_occurs=>0, :max_occurs=>1}, {:name=>:parameters, :type=>"CustomParameter", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CustomParameter=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TextAd2=>{:fields=>[{:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :AppAd=>{:fields=>[{:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_store, :type=>"AppStore", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :ExtendedTextAd=>{:fields=>[{:name=>:headline2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:path1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:path2, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :DynamicSearchLinkedAd=>{:fields=>[], :base=>"Ad"}, :Label=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:color, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :AdGroupAdOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"AdGroupAd", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :AdGroupAdReturnValue=>{:fields=>[{:name=>:values, :type=>"AdGroupAdValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ContainsLabelId=>{:fields=>[]}, :IsRemove=>{:fields=>[]}, :AdType=>{:fields=>[]}, :UserStatus=>{:fields=>[]}, :ApprovalStatus=>{:fields=>[]}, :TrademarkStatus=>{:fields=>[]}, :DevicePreference=>{:fields=>[]}, :AppStore=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    ADGROUPADSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201901"]

    def self.get_method_signature(method_name)
      return ADGROUPADSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPADSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPADSERVICE_NAMESPACES[index]
    end
  end
end; end; end
