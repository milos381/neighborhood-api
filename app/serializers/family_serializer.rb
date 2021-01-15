class FamilySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
    def initialize(family_object)
      @family = family_object
    end
  
    def to_serialized_json
      @family.to_json()
    end
  #:include => {:reports},
  #:except => [:created_at, :updated_at]
  end