class SchoolAdminsController < ApplicationController
  before_action :set_school_admin, only: %i[ show edit update destroy ]

  # GET /school_admins or /school_admins.json
  def index
    @school_admins = SchoolAdmin.all
  end

  # GET /school_admins/1 or /school_admins/1.json
  def show
  end

  # GET /school_admins/new
  def new
    school = School.find(params["school_id"])
    @school_admin = school.school_admins.new
  end

  # GET /school_admins/1/edit
  def edit
  end

  # POST /school_admins or /school_admins.json
  def create
    @school_admin = SchoolAdmin.new(school_admin_params)
    user = @school_admin.user
    user.role = "school_admin"
    respond_to do |format|
      if @school_admin.save && user.save
        format.html { redirect_to school_school_admins_url(@school_admin.school), notice: "School admin was successfully created." }
        format.json { render :show, status: :created, location: @school_admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_admins/1 or /school_admins/1.json
  def update
    respond_to do |format|
      if @school_admin.update(school_admin_params)
        format.html { redirect_to school_school_admins_url(@school_admin.school), notice: "School admin was successfully updated." }
        format.json { render :show, status: :ok, location: @school_admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @school_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_admins/1 or /school_admins/1.json
  def destroy
    @school_admin.destroy

    respond_to do |format|
      format.html { redirect_to schools_url, notice: "School admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_admin
      @school_admin = SchoolAdmin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_admin_params
      params.permit(:school_id, :user_id)
    end
end
