class UsersController < Clearance::UsersController
  def show
    @user = User.find_by_username(params[:username])
    render :file => 'public/404.html', :status => 404
  end
end