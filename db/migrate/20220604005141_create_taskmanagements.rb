class CreateTaskmanagements < ActiveRecord::Migration[5.2]
  def change
    create_table :taskmanagements do |t|
      t.string :subject
      t.string :detail
      t.date :limit

      t.timestamps
    end
  end
end
