shared_context 'report.helper.v6.4' do
  let(:report_category_account) { 'ACCOUNT' }
  let(:report_fields_arr) do
    [
      'CLICKS',
      'CLICK_RATE',
      'DAY'
    ]
  end
  let(:lang) { 'JA' }

  # レポート定義を追加するためのパラメータ
  let(:report_def_creation_params) do
    {
      operator: "ADD",
      account_id: account_id,
      operand: {
        account_id: account_id,
        report_name: report_category_account,
        report_type: report_category_account,
        date_range_type: "CUSTOM_DATE",
        date_range: {
          start_date: '20170801',
          end_date: '20170804'
        },
        sort_fields: {
          type: "ASC",
          field: report_fields_arr.include?("DAY") ? "DAY" : report_fields_arr.first
        },
        format: "CSV",
        encode: "UTF-8",
        language: lang,
        fields: report_fields_arr
      }
    }
  end
  let(:report_definition_id) { '100000' }

  # レポート定義を削除するためのパラメータ
  # - operand: Hash
  let(:report_def_deletion_params) do
    {
      operator: "REMOVE",
      account_id: account_id,
      operand: { report_id: report_definition_id }
    }
  end

  let(:report_id) { '200000' }

  # レポートを追加するためのパラメータ
  # - レポート追加の場合は、report_idを指定する
  # - operand: Array
  let(:report_creation_params) do
    {
      operator: "ADD",
      account_id: account_id,
      operand: [{ report_id: report_id }]
    }
  end

  let(:report_job_id) { '200001' }

  # レポートを削除するためのパラメータ
  # - レポート削除の場合は、report_job_idを指定する(*report_idではなく)
  # - operand: Array
  let(:report_deletion_params) do
    {
      operator: "REMOVE",
      account_id: account_id,
      operand: [{ report_job_id: report_job_id }]
    }
  end

  let(:report_params) do
    {
      account_id: account_id,
      report_ids: [],
      paging: ''
    }
  end
end
