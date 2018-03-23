class MenuMealsController < ApplicationController
  before_action :set_menu_meal, only: [:show, :edit, :update, :destroy]

  # GET /menu_meals
  # GET /menu_meals.json
  def index
    @menu_meals = MenuMeal.all
  end

  # GET /menu_meals/1
  # GET /menu_meals/1.json
  def show
  end

  # GET /menu_meals/new
  def new
    @menu_meal = MenuMeal.new
  end

  # GET /menu_meals/1/edit
  def edit
  end

  # POST /menu_meals
  # POST /menu_meals.json
  def create
    @menu_meal = MenuMeal.new(menu_meal_params)

    respond_to do |format|
      if @menu_meal.save
        format.html { redirect_to @menu_meal, notice: 'Meal menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu_meal }
      else
        format.html { render :new }
        format.json { render json: @menu_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_meals/1
  # PATCH/PUT /menu_meals/1.json
  def update
    respond_to do |format|
      if @menu_meal.update(menu_meal_params)
        format.html { redirect_to @menu_meal, notice: 'Meal menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_meal }
      else
        format.html { render :edit }
        format.json { render json: @menu_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_meals/1
  # DELETE /menu_meals/1.json
  def destroy
    @menu_meal.destroy
    respond_to do |format|
      format.html { redirect_to menu_meals_url, notice: 'Meal menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_meal
      @menu_meal = MenuMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_meal_params
      params.require(:menu_meal).permit(:meal_id, :menu_id)
    end
end
