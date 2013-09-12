class ExercisesController < ApplicationController
   before_filter :signed_in_user
    before_filter :correct_user,   only: :destroy
  
  def index
    @workouts = Workout.all
    @exercises = User.find(current_user.id).exercises
  end

  def userexercise
    @workouts = User.find(current_user.id).workouts
    @exercises = User.find(current_user.id).exercises
  end


  def show
    # if current_user? 
      @exercise = Exercise.find(params[:id])
    # else
    #   @exercise = current_user.exercises.find(params[:id])
    # end
  end

  def new
   @exercise = User.find(current_user.id).exercises.new
   @workout = User.find(current_user.id).workouts.new
    
  end

 def create
   # @exercise = Exercise.new(exercise_params)
   # @exercise.save
   if current_user.exercises.create(params[:id])
      flash[:success] = "Exercise Created!"
      redirect_to dashboard_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:id])

      redirect_to @exercise, notice: "Successfully Updated Exercise."
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_url, notice: "Successfully Deleted Exercise."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_exercise
    #   @exercise = exercise.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
   

    def correct_user
      @exercise = current_user.exercises.find_by_id(params[:id])
      redirect_to root_url if @exercise.nil?
    end
end
