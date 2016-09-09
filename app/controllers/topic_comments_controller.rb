class TopicCommentsController < ApplicationController
  before_action :set_topic_comment, only: [:show, :edit, :update, :destroy]

  # GET /topic_comments
  # GET /topic_comments.json
  def index
    @topic_comments = TopicComment.all
  end

  # GET /topic_comments/1
  # GET /topic_comments/1.json
  def show
  end

  # GET /topic_comments/new
  def new
    @topic_comment = TopicComment.new
  end

  # GET /topic_comments/1/edit
  def edit
  end

  # POST /topic_comments
  # POST /topic_comments.json
  def create
    @topic_comment = TopicComment.new(topic_comment_params)

    respond_to do |format|
      if @topic_comment.save
        format.html { redirect_to @topic_comment, notice: 'Topic comment was successfully created.' }
        format.json { render :show, status: :created, location: @topic_comment }
      else
        format.html { render :new }
        format.json { render json: @topic_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic_comments/1
  # PATCH/PUT /topic_comments/1.json
  def update
    respond_to do |format|
      if @topic_comment.update(topic_comment_params)
        format.html { redirect_to @topic_comment, notice: 'Topic comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic_comment }
      else
        format.html { render :edit }
        format.json { render json: @topic_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_comments/1
  # DELETE /topic_comments/1.json
  def destroy
    @topic_comment.destroy
    respond_to do |format|
      format.html { redirect_to topic_comments_url, notice: 'Topic comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_comment
      @topic_comment = TopicComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_comment_params
      params.require(:topic_comment).permit(:message, :response_to)
    end
end
