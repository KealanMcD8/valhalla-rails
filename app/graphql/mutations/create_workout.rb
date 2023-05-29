module Mutations
  class CreateWorkout < Mutations::BaseMutation
    argument :date, GraphQL::Types::ISO8601DateTime, required: true
    argument :userId, ID, required: true
    argument :notes, String, required: true
    argument :workoutExercisesAttributes, [Types::Workout::WorkoutExercise], required: true

    field :success, Boolean, null: true
    field :errors, [String], null: false

    def resolve(date:, userId:, notes:, workoutExercisesAttributes:)
      user = User.find(userId)
      workout = Workout.new(date: date, notes: notes, user: user)

      if workout.save
        build_workout_exercises(workout, workoutExercisesAttributes)
        { success: true, errors: [] }
      else
        { success: false, errors: workout.errors.full_messages }
      end
    end


    private

    def build_workout_exercises(workout, workoutExercisesAttributes)
      workoutExercisesAttributes.each do |exercise_attrs|
        exercise = Exercise.find(exercise_attrs.exercise_id)
        workout_exercise = workout.workout_exercises.build(exercise: exercise)

        if workout_exercise.save
          build_workout_sets(workout, workout_exercise, exercise_attrs.workout_sets_attributes)
        end
      end
    end

    def build_workout_sets(workout, workout_exercise, workout_sets_attributes)
      workout_sets_attributes.each do |set_attrs|
        workout_set = workout_exercise.workout_sets.build(set_attrs.to_h)
        workout_set.workout = workout
        workout_set.exercise = workout_exercise.exercise

        workout_set.save
      end
    end
  end
end
