class ReportsController < ApplicationController
    def index
        @reports = Report.all
        render json: @reports
    end
    def show
        @report = Report.find(params[:id])
        render json: @report
    end
    def create

        report = Report.create()
        render json: ReportSerializer.new(report).to_serialized_json

    end
    def update
        @report = Report.find(params[:id])
        @report.update(report_params)
        render json: @report
    end
    def destroy
        report = Report.find(params[:id])
        report.destroy
        render json: ReportSerializer.new(report).to_serialized_json

    end
    private
    def report_params
        params.require(:report).permit(:headline, :content)
    end
end
