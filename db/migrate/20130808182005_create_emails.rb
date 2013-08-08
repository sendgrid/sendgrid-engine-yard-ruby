class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.date :date
      t.text :message

      t.timestamps
    end
  end
end
