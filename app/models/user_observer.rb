class UserObserver < ActiveRecord::Observer

  def after_create(user)
    UserMailer.deliver_confirmation_code(user) if user.pending?
  end

end
