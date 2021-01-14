class Family < ApplicationRecord
    has_many :events
    has_many :reports, through: :events
end
