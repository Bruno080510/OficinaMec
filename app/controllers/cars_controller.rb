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
        format.html { redirect_to car_url(@car), notice: "Car was successfully created." }
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
        format.html { redirect_to car_url(@car), notice: "Car was successfully updated." }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car = Car.find(params[:id])

    begin
      # Verificar se há serviços associados ao carro
      if @car.servicos.present?
        puts "Antes de destruir os serviços: #{Servico.where(car_id: @car.id).pluck(:id)}"
        @car.servicos.destroy_all
        puts "Depois de destruir os serviços: #{Servico.where(car_id: @car.id).pluck(:id)}"
      end
  
      @car.destroy
      redirect_to cars_path, notice: 'Carro foi excluído com sucesso.'
    rescue StandardError => e
      puts "Erro ao excluir o carro: #{e.message}"
      redirect_to cars_path, alert: "Erro ao excluir o carro: #{e.message}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:modelo, :marca, :ano, :description, :placa, :oficina_id, :servico_id, :tipoDeServico)
    end
end