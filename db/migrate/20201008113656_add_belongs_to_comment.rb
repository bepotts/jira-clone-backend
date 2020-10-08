class AddBelongsToComment < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :comments, :ticket, index: true
  end
end
