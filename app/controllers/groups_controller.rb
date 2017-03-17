class GroupsController < ApplicationController
  before_action :authenticate_user!,only: [:new, :create]
  def index
    @groups = Group.all
  end

  def show
     @group = Group.find(params[:id])
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end
  def create
    @group = Group.new(group_params)
    @group.user = current_user

    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end
