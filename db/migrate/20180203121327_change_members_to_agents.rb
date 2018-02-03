class ChangeMembersToAgents < ActiveRecord::Migration
  def change
    rename_column :projects, :members, :agents
  end
end
