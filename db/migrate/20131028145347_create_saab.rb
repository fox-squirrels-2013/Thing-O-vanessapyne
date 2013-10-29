class CreateSaab < ActiveRecord::Migration

  def change
    create_table :saabs do |t|
      t.string :model
      t.string :color
      t.date :make_year

      t.timestamps
    end
  end


  
end

