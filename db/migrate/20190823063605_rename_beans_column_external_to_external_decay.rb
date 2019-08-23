class RenameBeansColumnExternalToExternalDecay < ActiveRecord::Migration[5.2]
  def change
    rename_column :beans, :external, :external_decay
  end
end
