class JobPostsController < ApplicationController
   # load_and_authorize_resource

  before_action :set_job_post, only: %i[ show edit update destroy ]
# GET /job_posts or /job_posts.json
  def index
    @job_posts = JobPost.all
  end

  # GET /job_posts/1 or /job_posts/1.json
  def show
  end

  # GET /job_posts/new
  def new
    @job_post = JobPost.new
  end

  # GET /job_posts/1/edit
  def edit
  end
  

  def search
     #byebug
     @job_posts = JobPost.where("title LIKE ?","%"+ params[:title] +"%")
      
      if @job_posts.present?
         render "index"
      else
        flash.alert = "Title not found"
        redirect_to job_posts_path
      end
  end

  def show_contractor_job
    @job_posts = JobPost.all
  end

  # POST /job_posts or /job_posts.json
  def create
    @job_post = JobPost.new(job_post_params)
    @job_post.contractor_id = current_user.id

    respond_to do |format|
      if @job_post.save
        format.html { redirect_to @job_post, notice: "Job post was successfully created." }
        format.json { render :show, status: :created, location: @job_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /job_posts/1 or /job_posts/1.json
  def update
    respond_to do |format|
      if @job_post.update(job_post_params)
        format.html { redirect_to @job_post, notice: "Job post was successfully updated." }
        format.json { render :show, status: :ok, location: @job_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_posts/1 or /job_posts/1.json
  def destroy
    @job_post.destroy
    respond_to do |format|
      format.html { redirect_to job_posts_url, notice: "Job post was successfully destroyed." }
      format.json { head :no_content }
    end
  end


 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post
      @job_post = JobPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_post_params
      params.require(:job_post).permit(:title,:description, :contact, :salary, :contractor_id)
    end
  end

