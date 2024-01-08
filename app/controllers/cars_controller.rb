class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]

  # GET /cars or /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1 or /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars or /cars.json
  def create
    @car = Car.new(car_params)
  
    respond_to do |format|
      if @car.save
        format.html { redirect_to cars_path, notice: "Car was successfully created." }
        format.json { render :show, status: :created, location: @car }
      else
        puts @car.errors.full_messages # Adicione esta linha para imprimir os erros no console
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /cars/1 or /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to cars_path, notice: "Car was successfully updated." }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1 or /cars/1.json
def destroy
  begin
    @car.destroy!
    flash[:notice] = 'Carro excluído com sucesso.'
  rescue ActiveRecord::RecordNotFound => e
    flash[:alert] = "Erro ao excluir o carro: #{e.message}"
  rescue StandardError => e
    flash[:alert] = "Erro desconhecido ao excluir o carro: #{e.message}"
  end

  respond_to do |format|
    format.html { redirect_to cars_url }
    format.json { head :no_content }
  end
end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:modelo, :marca, :ano, :description, :placa)
    end
end