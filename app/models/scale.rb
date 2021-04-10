class Scale < ApplicationRecord
    has_many :scale_notes
    has_many :notes, through: :scale_notes
    scope :alphabetical, -> {order(:name)}
    validates :name, presence: true
    validates :name, uniqueness: true
    validate :clean_name
    validates_length_of :name, maximum: 20

    def clean_name
        profanity_filter = LanguageFilter::Filter.new matchlist: :profanity
        if profanity_filter.match? name then
          errors.add(:name, "The following language is inappropriate in a username: #{profanity_filter.matched(name).join(', ')}")
        end
    end
end
