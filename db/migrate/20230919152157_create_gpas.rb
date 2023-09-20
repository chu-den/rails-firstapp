class CreateGpas < ActiveRecord::Migration[7.0]
  def change
    create_table :gpas do |t|
      t.string :class
      t.integer :evaluation

      t.timestamps
    end
  end
end
