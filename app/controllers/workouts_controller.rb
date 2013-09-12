class WorkoutsController < ApplicationController
  
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy
  
  def index 
    @workouts = Workout.all
    @exercises = Exercise.all
  end

  def show
    @workout = Workout.find(params[:id])
    @exercise = Exercise.find(params[:id])

   
  end

  def new
    @workouts = Workout.new(params[:id])
  end
  
  def create
   @workout = Workout.new(params[:workout])
   @workout.save
   if current_user.workouts.create(params[:id])
      
      flash[:success] = "Workout Created!"
      redirect_to workouts_path
    else
      @feed_items = []
      render 'users/dashboard'
    end
  end

  

  def edit
    @workouts = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update(params[:workout])

      redirect_to @workout, notice: "Successfully Updated Workout."
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_url, notice: "Successfully Deleted Workout."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_workout
    #   @workout = Workout.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    
    
    def correct_user
      @workout = current_user.workouts.find_by_id(params[:id])
      @exercise = current_user.exercises.find_by_id(params[:id])
      redirect_to root_url if @workout.nil?
    end
end
