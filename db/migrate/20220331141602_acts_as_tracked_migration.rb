class ActsAsTrackedMigration < ActiveRecord::Migration[6.0]
  def self.up
    create_table :activities do |t|
      t.references :actor, polymorphic: true
      t.references :subject, polymorphic: true
      t.references :parent, polymorphic: true
      t.text :attribute_changes
      t.text :activity_type
      t.text :human_description
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :activity
  end
end
