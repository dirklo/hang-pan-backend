class ScaleNote < ApplicationRecord
    belongs_to :note
    belongs_to :scale
    scope :sort_by_position, -> {order('position ASC')}
end
