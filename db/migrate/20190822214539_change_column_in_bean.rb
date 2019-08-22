class ChangeColumnInBean < ActiveRecord::Migration[5.2]
  def change
    rename_column :beans, :class, :classification
  end
end
