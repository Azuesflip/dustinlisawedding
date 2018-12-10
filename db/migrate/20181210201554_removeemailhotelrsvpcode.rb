class Removeemailhotelrsvpcode < ActiveRecord::Migration
  def change
  	remove_column :rsvps, :hotel, :string
  	remove_column :rsvps, :email, :string
  end
end
