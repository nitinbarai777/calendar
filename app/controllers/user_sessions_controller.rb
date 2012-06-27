class UserSessionsController < ApplicationController

  # GET /user_sessions/new
  # GET /user_sessions/new.xml
  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @user_session }
    end
  end

  # POST /user_sessions
  # POST /user_sessions.xml
  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
         if current_user.is_admin == 3
            format.html { redirect_to(:events, :notice => 'Login Successful') }
         elsif current_user.is_admin == 1 
            format.html { redirect_to(:users, :notice => 'Login Successful') }
         else current_user.is_admin == 2 
            format.html { redirect_to("/calendar/index", :notice => 'Login Successful') }
         end
        format.xml { render :xml => @user_session, :status => :created, :location => @user_session }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.xml
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
      redirect_to :controller => "users", :action => "home"
  end
end


