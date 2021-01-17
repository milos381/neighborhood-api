require 'pry'
class EventsController < ApplicationController
    def index
        events = Event.all
        render json: EventSerializer.new(events).to_serialized_json
      end
      def create
        family = Family.create(name: params[:family])
        report = Report.create(headline: params[:headline], content: params[:content])
        event = Event.create(family_id: family.id, report_id: report.id)
        render json: EventSerializer.new(event).to_serialized_json

    end
     
      def show
        event = Event.find_by(id: params[:id])
        render json: EventSerializer.new(event).to_serialized_json
      end
      def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: EventSerializer.new(event).to_serialized_json

    end

end
