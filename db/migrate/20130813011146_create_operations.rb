class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :command
      t.boolean :finished
      t.text :stdout
      t.text :stderr

      t.timestamps
    end
  end
end
