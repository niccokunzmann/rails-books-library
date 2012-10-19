require "book.rb"

class LendingsController < ApplicationController
  # GET /lendings
  # GET /lendings.json
  def index
    @lendings = Lending.all
	@lending = @lendings.first
	@lending_book = @lending.book

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lendings }
    end
  end

  # GET /lendings/1
  # GET /lendings/1.json
  def show
    @lending = Lending.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lending }
    end
  end

  # GET /lendings/new
  # GET /lendings/new.json
  def new
    @lending = Lending.new
    @all_books = Book.all.collect {|book| [book.title, book]}
    @all_user = User.all.collect {|book| [book.name, book]}

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lending }
    end
  end

  # GET /lendings/1/edit
  def edit
    @lending = Lending.find(params[:id])
    @all_books = Book.all.collect {|book| [book.title, book.id]}
    @all_user = User.all.collect {|book| [book.name, book.id]}
  end

  # POST /lendings
  # POST /lendings.json
  def create
    @lending = Lending.new(params[:lending])

    respond_to do |format|
      if @lending.save
        format.html { redirect_to @lending, :notice => 'Lending was successfully created.' }
        format.json { render :json => @lending, :status => :created, :location => @lending }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lending.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lendings/1
  # PUT /lendings/1.json
  def update
    @lending = Lending.find(params[:id])

    respond_to do |format|
      if @lending.update_attributes(params[:lending])
        format.html { redirect_to @lending, :notice => 'Lending was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lending.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lendings/1
  # DELETE /lendings/1.json
  def destroy
    @lending = Lending.find(params[:id])
    @lending.destroy

    respond_to do |format|
      format.html { redirect_to lendings_url }
      format.json { head :no_content }
    end
  end
end
