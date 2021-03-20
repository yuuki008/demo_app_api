class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title, default: ""
      t.text :description, default: ""
      t.references :user, foreign_key: true
      t.datetime :deadline, default: nil
      t.timestamps
    end
  end
end
