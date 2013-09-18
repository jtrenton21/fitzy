class ExercisesController < ApplicationController
   before_filter :signed_in_user
    before_filter :correct_user,   only: :destroy
  
  def index
  @exercises = Exercise.all
  # @exercise = @user.exercises.includes(:workouts)
  end

  def userexercise
    @workouts = User.find(current_user.id).workouts
    @exercises = User.find(current_user.id).exercises
  end


  def show
   
      @exercise = Exercise.find(params[:id])
      @workout =  Exercise.find(params[:id]).workouts
  end

  def new
   @exercise = User.find(current_user.id).exercises.new
   # @workout = User.find(current_user.id).workouts.new
   # @exercise.exerciseworkouts.build.build_workout
  end

 def create
   @exercise = current_user.exercises.build(params[:exercise])
      if @exercise.save
       
      flash[:notice] = "Exercise Created Successfully"
      redirect_to exercises_path
    else
      render :action => 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
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
    @workout = current_user.workouts.find_by_id(params[:id])
    @exercise = current_user.exercises.find_by_id(params[:id])
    redirect_to root_url if @workout.nil?
   end
end