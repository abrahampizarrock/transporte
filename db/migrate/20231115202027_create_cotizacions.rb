class CreateCotizacions < ActiveRecord::Migration[7.0]
  def change
    create_table :cotizacions do |t|

      t.timestamps
    end
  end
end
