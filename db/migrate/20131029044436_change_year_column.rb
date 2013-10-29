class ChangeYearColumn < ActiveRecord::Migration
  def change
    add_column :saabs, :year, :string
    remove_column :saabs, :make_year
  end
end
