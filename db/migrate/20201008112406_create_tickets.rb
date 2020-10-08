class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :project
      t.references :status
      t.string :title
      t.text :description
      t.date :date_posted
      t.date :due_date

      t.timestamps
    end
  end
end
