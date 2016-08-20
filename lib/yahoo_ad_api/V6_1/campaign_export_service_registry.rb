# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.7 on 2016-08-17 13:52:27.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V6_1; module CampaignExportService
  class CampaignExportServiceRegistry
    CAMPAIGNEXPORTSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"JobSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignExportPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :add_job=>{:input=>[{:name=>:setting, :type=>"ExportSetting", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"add_job_response", :fields=>[{:name=>:rval, :type=>"CampaignExportReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CAMPAIGNEXPORTSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:remaining_quota, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:quota_used_for_this_request, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_millis, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CampaignExportPage=>{:fields=>[{:name=>:values, :type=>"CampaignExportValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignExportReturnValue=>{:fields=>[{:name=>:values, :type=>"CampaignExportValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :CampaignExportValues=>{:fields=>[{:name=>:job, :type=>"Job", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :Job=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:job_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:job_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"JobStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:progress, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced, :type=>"Advanced", :min_occurs=>0, :max_occurs=>1}, {:name=>:download_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ExportSetting=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:campaign_criterion_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_criterion_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:campaign_user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ad_user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_criterion_user_statuses, :type=>"UserStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ad_approval_statuses, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_criterion_approval_statuses, :type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:entity_types, :type=>"EntityType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:job_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:lang, :type=>"Lang", :min_occurs=>0, :max_occurs=>1}, {:name=>:output, :type=>"Output", :min_occurs=>0, :max_occurs=>1}, {:name=>:encoding, :type=>"Encoding", :min_occurs=>0, :max_occurs=>1}, {:name=>:advanced, :type=>"Advanced", :min_occurs=>0, :max_occurs=>1}]}, :JobSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:job_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:statuses, :type=>"JobStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :UserStatus=>{:fields=>[]}, :ApprovalStatus=>{:fields=>[]}, :EntityType=>{:fields=>[]}, :Lang=>{:fields=>[]}, :Output=>{:fields=>[]}, :Encoding=>{:fields=>[]}, :JobStatus=>{:fields=>[]}, :Advanced=>{:fields=>[]}}
    CAMPAIGNEXPORTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNEXPORTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNEXPORTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNEXPORTSERVICE_NAMESPACES[index]
    end
  end
end; end; end
