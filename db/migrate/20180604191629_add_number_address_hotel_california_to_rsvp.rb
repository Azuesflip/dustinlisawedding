class AddNumberAddressHotelCaliforniaToRsvp < ActiveRecord::Migration
  def change
  	add_column :rsvps, :acceptcalifornia, :boolean
    add_column :rsvps, :hotel, :string
    add_column :rsvps, :number, :string
    add_column :rsvps, :address, :string
  end
end
