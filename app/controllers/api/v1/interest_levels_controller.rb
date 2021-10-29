class Api::V1::InterestLevelsController < Api::V1::GraphitiController
  def index
    interest_levels = InterestLevelResource.all(params)
    respond_with(interest_levels)
  end

  def show
    interest_level = InterestLevelResource.find(params)
    respond_with(interest_level)
  end

  def create
    interest_level = InterestLevelResource.build(params)

    if interest_level.save
      render jsonapi: interest_level, status: :created
    else
      render jsonapi_errors: interest_level
    end
  end

  def update
    interest_level = InterestLevelResource.find(params)

    if interest_level.update_attributes
      render jsonapi: interest_level
    else
      render jsonapi_errors: interest_level
    end
  end

  def destroy
    interest_level = InterestLevelResource.find(params)

    if interest_level.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: interest_level
    end
  end
end
