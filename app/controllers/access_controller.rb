class AccessController < ApplicationController
  before_filter :confirm_logged_in, :except => [:login, :attempt_login]
  
  def index
    render('menu')
  end
  def menu
   idd=session[:user_id]
   @user=User.where(id: idd).first
   @role=@user.roles.first
   @flag1=@flag2=@flag3=0
   if @role.name == 'doctor'
     @flag1=1
   elsif @role.name == 'patient'
     @flag2=1
   elsif @role.name == 'assistant'
     @flag3=1
   elsif @role.name == 'admin'
     @flag4=1
   end
   # @role.each do |role|
      # if !(role.permissions.where(:name => 'create_doctor').empty?)
        # @flag1=1
      # end
      # if !(role.permissions.where(:name => 'create_assistant').empty?)
        # @flag2=1
      # end
      # if !(role.permissions.where(:name => 'create_patient').empty?)
        # @flag3=1
      # end
      # if !(role.permissions.where(:name => 'show_appointment').empty?)
        # @flag4=1
      # end
      # if !(role.permissions.where(:name => 'confirm_appointment').empty?)
        # @flag5=1
      # end
   # end
   #@role=@user.roles
   #@perm=@role.permissions
  end

  def login
    if session[:user_id]
      puts "yes" 
      redirect_to(:action => 'menu')
    end
  end
  
  def attempt_login
    authorized_user=User.authenticate(params[:name], params[:password])
    if authorized_user
      x=User.where(username: params[:name]).first 
      session[:user_id]=x.id
      session[:username]=x.username
      flash[:notice] = "you are now logged in"
      redirect_to(:action => 'menu')
    else
      flash[:notice]="Invalid user/ password combination"
      redirect_to(:action => 'login')
    end
  end
  
  def logout
     session[:user_id]=nil
     session[:name]=nil
     flash[:notice]= "you are now logged out"
     redirect_to(:action => 'menu')
  end
end
