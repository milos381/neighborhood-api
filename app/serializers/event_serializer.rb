class EventSerializer
 
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