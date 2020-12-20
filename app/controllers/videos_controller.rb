# frozen_string_literal: true

class VideosController < ApplicationController
  before_action :set_video, only: %i[show edit update destroy]

  def index
    @videos = Video.all
  end

  def show
    @comment = Comment.new
    @comments = @video.comments
  end

  def new
    @video = Video.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
    end
  end

  def create_comment
    @comment = Comment.new(comment_params)
    @comment.save
    @comments = Video.find(params[:comment][:video_id]).comments
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :youtube_link, :category_id)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :comment_body, :video_id)
  end
end
