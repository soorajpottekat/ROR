class PortfoliosController < ApplicationController
  def index
    @portfolio_items=Portfolio.all
  end
  def new
    @portfolio_items=Portfolio.new
  end

  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item is successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
    @portfolio_items=Portfolio.find(params[:id])
  end
  def update
    @portfolio_items=Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio item is successfully updated.' }
      else
        format.html { render :edit }
      end 
    end
  end
  def show
    @portfolio_items=Portfolio.find(params[:id])
  end
  def destroy
    #Perform the look up
    @portfolio_items=Portfolio.find(params[:id])
    # destroy the record
    @portfolio_items.destroy
    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Record was removed .' }
    end
  end
end
