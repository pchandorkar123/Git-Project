class AppliesController < ApplicationController
  before_action :set_apply, only: %i[ show edit update destroy ]

  # GET /applies or /applies.json
  def index
    @applies = Apply.all
  end

  # GET /applies/1 or /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
  end

  # GET /applies/1/edit
  def edit
  end

  # POST /applies or /applies.json
  def create
    @apply = Apply.new(apply_params)
     @apply.worker_id = current_user.id
    respond_to do |format|
      if @apply.save
        format.html { redirect_to @apply, notice: "Apply was successfully created." }
        format.json { render :show, status: :created, location: @apply }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applies/1 or /applies/1.json
  def update
    respond_to do |format|
      if @apply.update(apply_params)
        format.html { redirect_to @apply, notice: "Apply was successfully updated." }
        format.json { render :show, status: :ok, location: @apply }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1 or /applies/1.json
  def destroy
    @apply.destroy
    respond_to do |format|
      format.html { redirect_to applies_url, notice: "Apply was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apply_params
      params.require(:apply).permit(:name, :contact, :experience, :expectedSalary)
    end
end
