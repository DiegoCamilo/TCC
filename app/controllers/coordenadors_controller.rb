class CoordenadorsController < ApplicationController
  # GET /coordenadors
  # GET /coordenadors.json
  def index
    @coordenadors = Coordenador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coordenadors }
    end
  end

  # GET /coordenadors/1
  # GET /coordenadors/1.json
  def show
    @coordenador = Coordenador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coordenador }
    end
  end

  # GET /coordenadors/new
  # GET /coordenadors/new.json
  def new
    @coordenador = Coordenador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coordenador }
    end
  end

  # GET /coordenadors/1/edit
  def edit
    @coordenador = Coordenador.find(params[:id])
  end

  # POST /coordenadors
  # POST /coordenadors.json
  def create
    @coordenador = Coordenador.new(params[:coordenador])

    respond_to do |format|
      if @coordenador.save
        format.html { redirect_to @coordenador, notice: 'Coordenador was successfully created.' }
        format.json { render json: @coordenador, status: :created, location: @coordenador }
      else
        format.html { render action: "new" }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coordenadors/1
  # PUT /coordenadors/1.json
  def update
    @coordenador = Coordenador.find(params[:id])

    respond_to do |format|
      if @coordenador.update_attributes(params[:coordenador])
        format.html { redirect_to @coordenador, notice: 'Coordenador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadors/1
  # DELETE /coordenadors/1.json
  def destroy
    @coordenador = Coordenador.find(params[:id])
    @coordenador.destroy

    respond_to do |format|
      format.html { redirect_to coordenadors_url }
      format.json { head :no_content }
    end
  end
end
