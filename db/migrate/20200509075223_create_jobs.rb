class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :position_needed
      t.text :description
      t.string :looking_for
      t.string :contact
      t.integer :desposit
      t.date :due_date
      t.string :location

      t.timestamps
    end
  end
end
