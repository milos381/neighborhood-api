class StreetSerializer

    def initialize(street_object)
      @street = street_object
    end
  
    def to_serialized_json
      @street.to_json(:include => {
        :families => {
          :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at])
    end
  
  end