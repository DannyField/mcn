class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :headline
      t.string :profile_picture
      t.string :current_job
      t.text :about
      t.text :skill
      t.string :location
      t.string :website
      t.boolean :admin
      t.string :password

      t.timestamps
    end
  end
end
