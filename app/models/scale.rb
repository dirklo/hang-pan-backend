class Scale < ApplicationRecord
    has_many :scale_notes
    has_many :notes, through: :scale_notes
    scope :alphabetical, -> {order(:name)}
    validates :name, presence: true
    validates :name, uniqueness: true
end
