class CreateLead < ActiveRecord::Migration
  def up
    create_table :leads do |t|
      t.string :email
      t.timestamps
    end
  end

  def down
    drop_table :email
  end
end
