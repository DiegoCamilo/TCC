class DiretorsController < ApplicationController
  # GET /diretors
  # GET /diretors.json
  def index
    @diretors = Diretor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diretors }
    end
  end

  # GET /diretors/1
  # GET /diretors/1.json
  def show
    @diretor = Diretor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diretor }
    end
  end

  # GET /diretors/new
  # GET /diretors/new.json
  def new
    @diretor = Diretor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diretor }
    end
  end

  # GET /diretors/1/edit
  def edit
    @diretor = Diretor.find(params[:id])
  end

  # POST /diretors
  # POST /diretors.json
  def create
    @diretor = Diretor.new(params[:diretor])

    respond_to do |format|
      if @diretor.save
        format.html { redirect_to @diretor, notice: 'Diretor was successfully created.' }
        format.json { render json: @diretor, status: :created, location: @diretor }
      else
        format.html { render action: "new" }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diretors/1
  # PUT /diretors/1.json
  def update
    @diretor = Diretor.find(params[:id])

    respond_to do |format|
      if @diretor.update_attributes(params[:diretor])
        format.html { redirect_to @diretor, notice: 'Diretor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diretors/1
  # DELETE /diretors/1.json
  def destroy
    @diretor = Diretor.find(params[:id])
    @diretor.destroy

    respond_to do |format|
      format.html { redirect_to diretors_url }
      format.json { head :no_content }
    end
  end
end
