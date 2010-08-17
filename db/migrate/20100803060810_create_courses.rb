class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.string :duration
      t.string :teacher
      t.string :cost
      t.string :currency

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
