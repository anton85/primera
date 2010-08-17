
class FormContact < ActiveRecord::Base

      validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                               :message => 'El email ingresado debe ser valido'
   validates_presence_of :name
   
   
   validates_presence_of :course
 #validates_presence_of :age
#validates_format_of :age, :with => /^\d+$/
#validates_inclusion_of :age, :in => 0..99

   validates_presence_of :occupation
    validates_presence_of :email
    validates_presence_of :phone
    validates_length_of :phone, :maximum=>25


validates_length_of :comment, :maximum=>270



end
