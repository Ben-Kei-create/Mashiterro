class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

# このように記述することで、devise利用の機能（ユーザ登録、ログイン認証など）が使われる前に
# configure_permitted_parametersメソッドが実行されます。

  def after_sign_in_path_for(resource)
    about_path
  end
  # サインイン後の遷移先
  
  
  def after_sign_out_path_for(resource)
    about_path
  end
  # サインアウト後の遷移先
  
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end