class Mutations::CreateWorkout < GraphQL::Schema::Mutation
  argument :user_id, ID, required: true
  argument :date, String, required: true
  argument :workout_sets_attributes, [Types::WorkoutSetInput], required: true

  # Other arguments...

  field :workout, Types::Workout, null: true
  field :errors, [String], null: false

  def resolve(user_id:, date:, workout_sets_attributes:, **other_arguments)
    workout = Workout.new(user_id: user_id, date: date, **other_arguments)

    workout_sets = []

    ActiveRecord::Base.transaction do
      # Save the workout
      workout.save!

      # Create workout sets
      workout_sets_attributes.each do |set_attributes|
        exercise = Exercise.find(set_attributes.exercise_id)
        sets = set_attributes.sets
        sets.each do |set|
          workout_set = WorkoutSet.new(
            reps: set.reps,
            weight: set.weight,
            rest_time: set.rest_time,
            exercise: exercise,
            workout: workout
          )
          workout_set.save!
          workout_sets << workout_set
        end
      end
    rescue ActiveRecord::RecordInvalid => e
      # Handle validation errors
      return { workout: nil, errors: e.record.errors.full_messages }
    end

    { workout: workout, errors: [] }
  end
end
