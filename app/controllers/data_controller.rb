class DataController < ApplicationController
  respond_to :json

  def heartrate
    respond_with(
      current_user.heart_rates.map do |heartrate|
        [heartrate.created_at, heartrate.value]
      end
    )
  end

  def calories
    respond_with(
      current_user.calories.map do |calory|
        [calory.created_at, calory.value]
      end
    )
  end

  def activity
    respond_with([
      export_activity('Running'),
      export_activity('Cycling'),
      export_activity('Swimming')
    ])
  end

  private

    def export_activity(name)
      {
        name: name,
        data: current_user.activities.where(name: name).map do |activity|
          [activity.created_at, activity.value]
        end
      }
    end
end
