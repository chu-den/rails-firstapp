class RenameClassColumnToGpas < ActiveRecord::Migration[7.0]
  def change
    rename_column :gpas, :class, :classname
  end
end
