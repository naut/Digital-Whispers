 class User < ActiveRecord::Base

  acts_as_authentic

  include AASM

  attr_protected :status

  aasm_column :status
  aasm_initial_state :pending

  aasm_state :pending
  aasm_state :confirmed     

  aasm_event :confirm do
    transitions :to => :confirmed, :from => :pending
  end

  
  has_many  :entries  
  
end
