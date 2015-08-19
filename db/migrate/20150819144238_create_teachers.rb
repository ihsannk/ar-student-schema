require_relative '../config'
# this is where you should use an ActiveRecord migration to
class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    t.string :name
    t.string :email
    t.string :phone
    t.timestamps null: false
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end

