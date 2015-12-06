class PagesController < ApplicationController

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def show
		@page = Page.find(params[:id])
	end

	def create
		@page = Page.create(page_params)
		redirect_to page_path(@page.id)
	end

	private

	def page_params
		params.require(:page).permit(:name, :category, :author, :content)
	end
end
