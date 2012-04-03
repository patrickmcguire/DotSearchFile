class SearchOwnershipsController < ApplicationController
  # GET /search_ownerships
  # GET /search_ownerships.json
  def index
    @search_ownerships = SearchOwnership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_ownerships }
    end
  end

  # GET /search_ownerships/1
  # GET /search_ownerships/1.json
  def show
    @search_ownership = SearchOwnership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_ownership }
    end
  end

  # GET /search_ownerships/new
  # GET /search_ownerships/new.json
  def new
    @search_ownership = SearchOwnership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_ownership }
    end
  end

  # GET /search_ownerships/1/edit
  def edit
    @search_ownership = SearchOwnership.find(params[:id])
  end

  # POST /search_ownerships
  # POST /search_ownerships.json
  def create
    @search_ownership = SearchOwnership.new(params[:search_ownership])

    respond_to do |format|
      if @search_ownership.save
        format.html { redirect_to @search_ownership, notice: 'Search ownership was successfully created.' }
        format.json { render json: @search_ownership, status: :created, location: @search_ownership }
      else
        format.html { render action: "new" }
        format.json { render json: @search_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_ownerships/1
  # PUT /search_ownerships/1.json
  def update
    @search_ownership = SearchOwnership.find(params[:id])

    respond_to do |format|
      if @search_ownership.update_attributes(params[:search_ownership])
        format.html { redirect_to @search_ownership, notice: 'Search ownership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_ownerships/1
  # DELETE /search_ownerships/1.json
  def destroy
    @search_ownership = SearchOwnership.find(params[:id])
    @search_ownership.destroy

    respond_to do |format|
      format.html { redirect_to search_ownerships_url }
      format.json { head :no_content }
    end
  end
end
