class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :name
      t.string :title
      t.string :isn

      t.timestamps
    end
  end
end
