module UsersHelper
  def logged?
    session[:user_id].present? ? true : false
  end
  def current_user
    if logged?
    User.find(session[:user_id])
   end
  end
end
