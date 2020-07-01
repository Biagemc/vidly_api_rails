class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :number_in_stock
      t.integer :daily_rental_rate

      t.timestamps
    end
  end
end
