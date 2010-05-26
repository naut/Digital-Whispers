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

  def self.from_param(name)
    "#{name}".gsub(/\+/, '.')
  end

  def self.find_by_name(username, *args)
    find(:first, :conditions => ["username=?", User.from_param(username)] )
  end
  
  has_many  :entries  
  
end
