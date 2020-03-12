class Users::RegistrationsController < Devise::RegistrationsController
  before_action :forbid_test_user, {only: [:destroy]}

  private

  def forbid_test_user
    if current_user.email == "test@gmail.com"
      flash[:notice] = "テストユーザーのため変更できません"
      redirect_to root_path
    end
  end

end
