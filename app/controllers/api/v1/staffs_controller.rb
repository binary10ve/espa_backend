class Api::V1::StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  # GET /staffs
  # GET /staffs.json
  def index
    @staffs = User.where(nil)
    @staffs = @staffs.search(params[:term]) if params[:term].present?
    @staffs= @staffs.paginate(:page => params[:page], :per_page => 5)
    render :json => { :staffs => @staffs}
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  # GET /staffs/new
  def new
    @roles = Role.all
    @staff = User.new
  end

  # GET /staffs/1/edit
  def edit
     @roles = Role.all
     @selected_roles = @staff.roles.map(&:id)
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = User.new(staff_params)
    @staff.password = GlobalConfig::MASTER_PASSWORD
    @staff.password_confirmation = GlobalConfig::MASTER_PASSWORD
    if params[:roles].present?
      @staff.roles << Role.where(:id=> params[:roles])
    end
    respond_to do |format|
      if @staff.save
        format.json { render json: @staff}
      else
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1
  # PATCH/PUT /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to admin_staff_path(@staff), notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        @roles = Role.all
        format.html { render action: 'edit' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to admin_staffs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:user).permit(:first_name, :last_name, :date_of_birth, :pan_no, :permanent_address, :temporary_address, :phone1, :phone2, :emergency_contact_no,:email, :password, :password_confirmation)
    end
end
