class Rsvp < ActiveRecord::Base

  #searchkick

  validates :party, presence: true, length: { minimum: 1 }
  validates :attendees, presence: true
  validates :accept, presence: true
  validates :acceptcalifornia, presence: true
  validates :address, presence: true
  validates :number, presence: true
  validates :attendees, presence: true
  validates :comment, length: { minimum: 5 }, allow_blank: true

  default_scope -> { order('lower(party) asc') }

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |attendee|
        csv << attendee.attributes.values_at(*column_names)
      end
    end
  end
end
