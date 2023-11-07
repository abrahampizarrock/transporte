class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :index
      t.string :info
      t.string :photos
      t.string :video

      t.timestamps
    end
  end
end
