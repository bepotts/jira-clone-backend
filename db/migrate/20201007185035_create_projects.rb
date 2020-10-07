class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :status, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.date :date_published
      t.date :date_due
      t.references :teams, null: false, foreign_key: true

      t.timestamps
    end
  end
end
