class ReportSerializer
  include FastJsonapi::ObjectSerializer
  attributes :headline, :content
    def initialize(report_object)
      @report = report_object
    end
  
    def to_serialized_json
      @report.to_json()
    end
  
  end