class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :body
      t.boolean :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
