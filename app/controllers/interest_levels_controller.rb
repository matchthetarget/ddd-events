class InterestLevelsController < ApplicationController
  before_action :set_interest_level, only: %i[show edit update destroy]

  def index
    @q = InterestLevel.ransack(params[:q])
    @interest_levels = @q.result(distinct: true).includes(:user,
                                                          :event).page(params[:page]).per(10)
  end

  def show; end

  def new
    @interest_level = InterestLevel.new
  end

  def edit; end

  def create
    @interest_level = InterestLevel.new(interest_level_params)

    if @interest_level.save
      message = "InterestLevel was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @interest_level, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @interest_level.update(interest_level_params)
      redirect_to @interest_level,
                  notice: "Interest level was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @interest_level.destroy
    message = "InterestLevel was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to interest_levels_url, notice: message
    end
  end

  private

  def set_interest_level
    @interest_level = InterestLevel.find(params[:id])
  end

  def interest_level_params
    params.require(:interest_level).permit(:level, :user_id, :event_id)
  end
end
