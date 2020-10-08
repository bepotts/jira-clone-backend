class UpdateRelationships < ActiveRecord::Migration[6.0]
  def change
    # Adds a belongs_to relationship from comments to project
    add_belongs_to :comments, :project, index: true
    # Removes the belongs_to relationship from projects to status_id
    remove_reference :projects, :status
    # Removes the incorrect team relationship
    remove_column :users, :team
    # Adds belongs_to relationship from Team to projects and users
    add_belongs_to :users, :team, index: true
  end
end
