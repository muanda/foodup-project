class Dropstepstable < ActiveRecord::Migration[5.2]
  def up
    drop_table :steps
  end

  def def down
    raise ActiveRecord::IrreversibleMigration
  end
end
