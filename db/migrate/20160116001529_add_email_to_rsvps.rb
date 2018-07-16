class AddDrinksToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :alcohol, :string
    add_column :rsvps, :drinks, :string
  end
end
