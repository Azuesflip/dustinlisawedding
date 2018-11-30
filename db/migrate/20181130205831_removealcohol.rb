class Removealcohol < ActiveRecord::Migration
  def change
  	remove_column :rsvps, :alcohol, :boolean
  	remove_column :rsvps, :drinks, :integer
  end
end