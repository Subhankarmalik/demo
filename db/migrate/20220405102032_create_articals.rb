class CreateArticals < ActiveRecord::Migration[5.2]
  def change
    create_table :articals do |t|
      t.string :title
      t.text :description
    end
  end
end
