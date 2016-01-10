class ArticlesController < ApplicationController
	before_action :get_article, only: [:show, :edit, :update, :destroy]

	def fancy_method
		
	end


	def index
		@elephants = Article.all
	end
	def new 
		@article = Article.new
	end

	def edit
	end

	def create 
		@article = Article.new(articles_params)
		if @article.save
		redirect_to @article, notice: "Your article was successfully created."
	else
	render :new 
	end 
end

	def update
		if @article.update(articles_params)
		redirect_to @article
		else
			render :edit
		end
	end

	def show
	end		

	def destroy
		@article.delete
		redirect_to articles_path 
end
	private

	def get_article
	@article = Article.find(params[:id])
end

	def articles_params
		params.require(:article).permit(:title, :content)
	end 
end
