class Scale < ApplicationRecord
    has_many :scale_notes
    has_many :scales, through: :scale_notes
end
