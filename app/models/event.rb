class Event < ApplicationRecord
    belongs_to :family
    belongs_to :report
end
