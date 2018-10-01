class PostingsController < ProtectedController
  before_action :set_posting, only: [:update, :destroy]

  # GET /postings
  def index
    #@postings = Posting.all

    @postings = current_user.postings.all

    render json: @postings
  end

  # GET /postings/1
  def show
    @posting = current_user.postings.find(params[:id])
    render json: @posting
  end

  # POST /postings
  def create
    @posting = current_user.postings.build(posting_params)

    if @posting.save
      render json: @posting, status: :created, location: @posting
    else
      render json: @posting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /postings/1
  def update
    if @posting.update(posting_params)
      render json: @posting
    else
      render json: @posting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /postings/1
  def destroy
    current_user.postings.find(params[:id]).destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting
      @posting = current_user.postings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def posting_params
      params.require(:posting).permit(:title, :poster, :category, :location, :status, :description)
    end

    private :set_posting, :posting_params
end
