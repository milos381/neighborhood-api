class ReportSerializer

    def initialize(report_object)
      @report = report_object
    end
  
    def to_serialized_json
      @report.to_json()
    end
  
  end