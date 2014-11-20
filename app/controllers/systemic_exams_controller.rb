class SystemicExamsController < ApplicationController
  before_action :set_systemic_exam, only: [:show, :edit, :update, :destroy]

  # GET /systemic_exams
  # GET /systemic_exams.json
  def index
    @systemic_exams = SystemicExam.all
  end

  # GET /systemic_exams/1
  # GET /systemic_exams/1.json
  def show
  end

  # GET /systemic_exams/new
  def new
    @systemic_exam = SystemicExam.new
  end

  # GET /systemic_exams/1/edit
  def edit
  end

  # POST /systemic_exams
  # POST /systemic_exams.json
  def create
    @systemic_exam = SystemicExam.new(systemic_exam_params)

    respond_to do |format|
      if @systemic_exam.save
        format.html { redirect_to @systemic_exam, notice: 'Systemic exam was successfully created.' }
        format.json { render :show, status: :created, location: @systemic_exam }
      else
        format.html { render :new }
        format.json { render json: @systemic_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /systemic_exams/1
  # PATCH/PUT /systemic_exams/1.json
  def update
    respond_to do |format|
      if @systemic_exam.update(systemic_exam_params)
        format.html { redirect_to @systemic_exam, notice: 'Systemic exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @systemic_exam }
      else
        format.html { render :edit }
        format.json { render json: @systemic_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /systemic_exams/1
  # DELETE /systemic_exams/1.json
  def destroy
    @systemic_exam.destroy
    respond_to do |format|
      format.html { redirect_to systemic_exams_url, notice: 'Systemic exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_systemic_exam
      @systemic_exam = SystemicExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def systemic_exam_params
      params.require(:systemic_exam).permit(:RespiratorySystem_id, :GastroIntestinalSystem_id, :CardioVascularSystem_id, :NervousSystem_id, :Eye_id, :ENT_id, :Skin_id, :GenitoUrinalSystem_id, :MusculoSkeletalSystem_id)
    end
end
