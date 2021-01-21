module ApplicationHelper
  def verify_user_admin(user)
    if user_signed_in?
      user.admin == "administrator"
    end
  end
end
