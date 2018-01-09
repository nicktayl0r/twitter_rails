class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    def show
        @tweets = Tweet.find(params[:id])
    end
    def new
        @tweets = Tweet.new
      end
      def create
        @tweet = Tweet.new(params.require(:bean).permit(:name, :roast, :origin, :quantity))
        if @tweet.save
          redirect_to tweets_path
        else
          render :new
        end
      end
      def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to tweets_path
      end
      def edit
        @tweet = Tweet.find(params[:id])      
      end
      def update
        @tweet = Tweet.find(params[:id])
        if @tweet.update_attributes(params.require(:bean).permit(:name, :roast, :origin, :quantity))
          redirect_to tweets_path
        else
          render :edit
        end
      end
end
