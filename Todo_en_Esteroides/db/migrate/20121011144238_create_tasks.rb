class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      # Completa con las columnas que necesites
      t.string :activity
      t.boolean :completed
      t.timestamps 
    end
  end
end
