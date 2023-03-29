class ProjectStatusHistoriesController < ApplicationController
  before_action :set_project_status_history, only: %i[ show edit update destroy ]

  # GET /project_status_histories or /project_status_histories.json
  def index
    @project_status_histories = ProjectStatusHistory.all
  end

  # GET /project_status_histories/1 or /project_status_histories/1.json
  def show
  end

  # GET /project_status_histories/new
  def new
    @project_status_history = ProjectStatusHistory.new
  end

  # GET /project_status_histories/1/edit
  def edit
  end

  # POST /project_status_histories or /project_status_histories.json
  def create
    @project_status_history = ProjectStatusHistory.new(project_status_history_params)

    respond_to do |format|
      if @project_status_history.save
        format.html { redirect_to project_status_history_url(@project_status_history), notice: "Project status history was successfully created." }
        format.json { render :show, status: :created, location: @project_status_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_status_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_status_histories/1 or /project_status_histories/1.json
  def update
    respond_to do |format|
      if @project_status_history.update(project_status_history_params)
        format.html { redirect_to project_status_history_url(@project_status_history), notice: "Project status history was successfully updated." }
        format.json { render :show, status: :ok, location: @project_status_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_status_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_status_histories/1 or /project_status_histories/1.json
  def destroy
    @project_status_history.destroy

    respond_to do |format|
      format.html { redirect_to project_status_histories_url, notice: "Project status history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_status_history
      @project_status_history = ProjectStatusHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_status_history_params
      params.require(:project_status_history).permit(:status, :user_id, :project_id)
    end
end
