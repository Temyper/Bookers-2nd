class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, presence: true
      t.text :body, presence: true

      t.timestamps
    end
  end
end
