class EditionsController < ApplicationController
  before_action :set_edition, only: [:show, :edit, :update, :destroy]

  # GET /editions
  # GET /editions.json
  def index
    @editions = Edition.all
  end

  # GET /editions/1
  # GET /editions/1.json
  def show
  end

  # GET /editions/new
  def new
    @edition = Edition.new
    phases_names.each do |name|
      @edition.phases.build(name:name)
    end

  end

  # GET /editions/1/edit
  def edit
  end

  # POST /editions
  # POST /editions.json
  def create
    @edition = Edition.new(edition_params)
    respond_to do |format|
      
      if @edition.save!
        format.html { redirect_to @edition, notice: 'Edition was successfully created.' }
        format.json { render :show, status: :created, location: @edition }
      else
        format.html { render :new }
        format.json { render json: @edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editions/1
  # PATCH/PUT /editions/1.json
  def update
    respond_to do |format|
      if @edition.update(edition_params)
        format.html { redirect_to @edition, notice: 'Edition was successfully updated.' }
        format.json { render :show, status: :ok, location: @edition }
      else
        format.html { render :edit }
        format.json { render json: @edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editions/1
  # DELETE /editions/1.json
  def destroy
    @edition.destroy
    respond_to do |format|
      format.html { redirect_to editions_url, notice: 'Edition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edition
      @edition = Edition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edition_params
      params.require(:edition).permit(:name, :start_date, :end_date, phases_attributes: phase_params)
    end

    def phase_params
      params = phase_keys()
      params << :id
      params << :_destroy
      return params
    end

    def phases_names
      ['Registro', 'Edici??n de datos / Retroalimentaci??n', 'Aprobaci??n de proyectos', 'Evaluaci??n de proyectos',
      'Selecci??n de proeyctos', 'Crear / Editar muestra', 'Asignaci??n de proyectos a evaluadores', 'Evaluaci??n  de proyectos']
    end
end
