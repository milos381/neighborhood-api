class FamilySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
    def initialize(family_object)
      @family = family_object
    end
  
    def to_serialized_json
      @trainer.to_json(:include => {
        :reports => {
          :except => [:updated_at]
        }},
        :except => [:created_at, :updated_at])
    end
  #:include => {:reports},
  #:except => [:created_at, :updated_at]
  end