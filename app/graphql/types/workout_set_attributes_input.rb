module Types
  class WorkoutSetAttributesInput < BaseInputObject
    argument :reps, Int, required: true
    argument :weight, Float, required: true
    argument :restTime, Integer, required: true, as: :rest_time
  end
end
