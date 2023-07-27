class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
