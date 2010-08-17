class CreateFormContacts < ActiveRecord::Migration
  def self.up
    create_table :form_contacts do |t|
      t.string :name
      t.number :age
      t.string :course
      t.string :otherCourse
      t.string :occupation
      t.string :email
      t.string :phone
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :form_contacts
  end
end
