class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :index, :tagged]

  # GET /contents
  # GET /contents.json
  def index
      @contents = Content.all.order('created_at DESC')

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @contents }
      end
  end

  def get_events
    @contents = Content.find_by_category_id(1)
  end

  helper_method :get_events

  # GET /contents/1
  # GET /contents/1.json
  def show
  end

  # GET /contents/new
  def new
    @content = Content.new
  end

  def get_category(category_id)
    @name = Category.find(category_id).name
  end

  helper_method :get_category

  def get_author(id)
    @name = User.find(id).name
  end

  helper_method :get_author

  def like
    @content = Content.find(params[:id])
    @content.liked_by current_user

    if request.xhr?
      render json: { count: @content.get_likes.size, id: params[:id] }
    else
      redirect_to @content
    end
  end

  def dislike
    @content = Content.find(params[:id])
    @content.disliked_by current_user

    if request.xhr?
      render json: { count: @content.get_likes.size, id: params[:id] }
    else
      redirect_to @content
    end
  end

  def popular
    @contents = Content.order('cached_votes_up DESC').limit(5)
  end

  helper_method :popular

  def tagged
    if params[:tag].present?
      @contents = Content.tagged_with(params[:tag])
    else
      @contents = Content.all
    end
  end

  # GET /contents/1/edit
  def edit
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)
    @content.description = BlueCloth.new(@content.description).to_html
    @content.user_id = current_user

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:title, :description, :category_id, :video, :limit_date, :event_site, :event_datetime, :tag_list, :image)
    end
end
