class AddEventIdToContribution < ActiveRecord::Migration
  def change
    add_column :contributions, :event_id, :integer
  end
end
