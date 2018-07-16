class AddDrinksToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :alcohol, :boolean
    add_column :rsvps, :drinks, :integer
  end
end
