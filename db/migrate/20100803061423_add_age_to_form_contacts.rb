class AddAgeToFormContacts < ActiveRecord::Migration
  def self.up
    add_column :form_contacts, :age,    :integer
   end

  def self.down
    remove_column :form_contacts, :age
  end
end


