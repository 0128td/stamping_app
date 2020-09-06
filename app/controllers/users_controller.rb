class UsersController < ApplicationController

  def index
    @users = User.all.order(created_at: "DESC")

  end

  def new
    @user = User.new

  end

  def create
    @user=User.new(name: params[:name],
                   email: params[:email],
                   password: params[:password],
                   administrator: params[:administrator])

    if @user.save
      flash[:notice] = I18n.t("helpers.submit.create")
      redirect_to("/user/index")
    else
      @name = params[:name]
      @email = params[:email]
      @password = params[:password]
      render("users/new")

    end

  end

  def show
    @user = User.find_by(id: params[:id])

  end

  def edit
    @user = User.find_by(id: params[:id])

  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save
      if @administrator_user
        flash[:notice] = I18n.t("helpers.submit.update")
        redirect_to("/user/index")
      else
        flash[:notice] = I18n.t("helpers.submit.update")
        redirect_to("/top")
      end

    else
      @name = params[:name]
      @email = params[:email]
      @password = params[:password]
      render("users/edit")
    end

  end

  def destroy
    @user = User.find_by(id: params[:id])

    @user.destroy
    flash[:notice] = I18n.t("helpers.submit.destroy")
    redirect_to("/users/index")

  end

end
