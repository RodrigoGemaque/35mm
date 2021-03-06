class LoginController < ApplicationController
  def new
    @login_form = LoginForm.new
  end

  def create
    @login_form = LoginForm.new(login_params)

    Login.call(@login_form) do |action|
      action.on(:success) do
        puts "yay!"
        redirect_to check_your_inbox_path
      end

      action.on(:error) do
        render :new

      end
    end

  end


  private
  def login_params
    params.require(:login ).permit(:email)
  end



end