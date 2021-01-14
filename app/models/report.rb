class Report < ApplicationRecord
    has_many :events
    has_many :families, through: :events
end
