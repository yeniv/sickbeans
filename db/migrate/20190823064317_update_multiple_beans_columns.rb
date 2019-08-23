class UpdateMultipleBeansColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :beans, :spots
    remove_column :beans, :decay
    rename_column :beans, :fruit, :fruit_spots
  end
end
