class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :status, null: false, default: 'todo'
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end

    add_index :tasks, [:board_id, :created_at]
  end
end
