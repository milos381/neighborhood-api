class EventSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :family
  belongs_to :report
    def initialize(event_object)
      @event = event_object
    end
    def to_serialized_json
        options = {
            include: {
              family: {
                only: [:name]
              },
              report: {
                only: [:headline, :content]
              }
            },
          }
          @event.to_json(options)
    end
  end