class MapeamentosController < ApplicationController
  # GET /mapeamentos
  # GET /mapeamentos.json
  def index
    @mapeamentos = Mapeamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mapeamentos }
    end
  end

  # GET /mapeamentos/1
  # GET /mapeamentos/1.json
  def show
    @mapeamento = Mapeamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mapeamento }
    end
  end

  # GET /mapeamentos/new
  # GET /mapeamentos/new.json
  def new
    @mapeamento = Mapeamento.new
    @professors = Professor.all
    @cursos = Curso.all
    @disciplinas = Disciplina.all
    @turmas = Turma.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mapeamento }
    end
  end

  # GET /mapeamentos/1/edit
  def edit
    @mapeamento = Mapeamento.find(params[:id])
    @professors = Professor.all
    @cursos = Curso.all
    @disciplinas = Disciplina.all
    @turmas = Turma.all
  end

  # POST /mapeamentos
  # POST /mapeamentos.json
  def create
    @mapeamento = Mapeamento.new(params[:mapeamento])

    respond_to do |format|
      if @mapeamento.save
        format.html { redirect_to @mapeamento, notice: 'Mapeamento was successfully created.' }
        format.json { render json: @mapeamento, status: :created, location: @mapeamento }
      else
        format.html { render action: "new" }
        format.json { render json: @mapeamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mapeamentos/1
  # PUT /mapeamentos/1.json
  def update
    @mapeamento = Mapeamento.find(params[:id])

    respond_to do |format|
      if @mapeamento.update_attributes(params[:mapeamento])
        format.html { redirect_to @mapeamento, notice: 'Mapeamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mapeamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapeamentos/1
  # DELETE /mapeamentos/1.json
  def destroy
    @mapeamento = Mapeamento.find(params[:id])
    @mapeamento.destroy

    respond_to do |format|
      format.html { redirect_to mapeamentos_url }
      format.json { head :no_content }
    end
  end
  
  def carrega_dados
    #aqui eu quero pegar as turmas do curso x
    if params[:tipoDado] == "turma"
      turno = params[:turno]
      curso = params[:curso]
      
      @turmas = Turma.where("curso_id = ?", curso)
      
      @turmas = @turmas.where("turno = ?", turno) unless turno.blank?
      
      respond_to do |format|
        format.json { render json: @turmas }
      end
    end
    
    #aqui eu quero pegar as disciplinas da turma x
    if params[:tipoDado] == "disciplina"
      turma = params[:turma]
      
      @disciplinas = Disciplina.joins(:mapeamentos).where("mapeamentos.turma_id = ?", turma)
      
      respond_to do |format|
        format.json { render json: @disciplinas }
      end
    end
    
  end
end
