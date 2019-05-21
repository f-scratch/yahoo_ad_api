# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by Shampoohat library 0.0.8 on 2019-05-14 16:44:47.

require 'yahoo_ad_api/errors'

module YahooAdApi; module V201901; module ReportService
  class ReportServiceRegistry
    REPORTSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"ReportSelector", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"ReportPage", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"ReportOperation", :min_occurs=>1, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"ReportReturnValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    REPORTSERVICE_TYPES = {:SoapHeader=>{:fields=>[{:name=>:license, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_id, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:api_account_password, :type=>"string", :min_occurs=>1, :max_occurs=>1}, {:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:on_behalf_of_password, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:service, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_taken_seconds, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>1, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>1, :max_occurs=>1}], :ns=>0}, :Error=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:detail, :type=>"ErrorDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :ErrorDetail=>{:fields=>[{:name=>:request_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_value, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReturnValue=>{:fields=>[{:name=>:operation_succeeded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:error, :type=>"Error", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ReportSelector=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:report_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:report_job_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:report_types, :type=>"ReportType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:report_job_statuses, :type=>"ReportJobStatus", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :ReportRecord=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_job_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_job_status, :type=>"ReportJobStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_job_error_detail, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:complete_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_download_url, :original_name=>"reportDownloadURL", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ReportPage=>{:fields=>[{:name=>:values, :type=>"ReportValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :ReportValues=>{:fields=>[{:name=>:report_record, :type=>"ReportRecord", :min_occurs=>0, :max_occurs=>1}], :base=>"ReturnValue"}, :ReportOperation=>{:fields=>[{:name=>:account_id, :type=>"long", :min_occurs=>1, :max_occurs=>1}, {:name=>:operand, :type=>"ReportRecord", :min_occurs=>1, :max_occurs=>:unbounded}], :base=>"Operation"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>1, :max_occurs=>1}], :abstract=>true}, :ReportReturnValue=>{:fields=>[{:name=>:values, :type=>"ReportValues", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ReportType=>{:fields=>[]}, :ReportJobStatus=>{:fields=>[]}, :Operator=>{:fields=>[]}}
    REPORTSERVICE_NAMESPACES = ["http://ss.yahooapis.jp/V201901"]

    def self.get_method_signature(method_name)
      return REPORTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return REPORTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return REPORTSERVICE_NAMESPACES[index]
    end
  end
end; end; end
