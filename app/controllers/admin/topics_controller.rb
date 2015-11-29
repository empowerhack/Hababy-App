module Admin
  class TopicsController < ApplicationController

    def show
      @topic = Topic.find(params[:id])
      @advices = @topic.advices
    end

    def index
      @topics = Topic.all
    end

    def create
      Topic.create(topic_params)
      redirect_to admin_topics_path
    end

    def new
    end

    def edit
      @topic = Topic.find(params[:id])
    end

    def update
      @topic = Topic.find(params[:id])
      if @topic.update(topic_params)
        redirect_to admin_topics_path
      else
        render 'edit'
      end
    end

    def destroy
      topic = Topic.find(params[:id])
      topic.destroy
      redirect_to admin_topics_path
    end

    private

    def topic_params
      params.require(:topic).permit(:name, :description)
    end
  end
end
