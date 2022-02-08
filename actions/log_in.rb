class LogIn
  include Signal.call

  attr_reader :form

  def initialize(form)
    @form = form
  end


  def call
    return emit(:error) unless form.valid?
  
    LoginLink.create(email) # was created in models
    LoginLink.valid?(link)
    # 1. generate login ling
    # 2. send email
    # 1. emit :success signal

  end

  
end