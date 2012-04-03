class ListOwnershipsController < ApplicationController
  # GET /list_ownerships
  # GET /list_ownerships.json
  def index
    @list_ownerships = ListOwnership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_ownerships }
    end
  end

  # GET /list_ownerships/1
  # GET /list_ownerships/1.json
  def show
    @list_ownership = ListOwnership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_ownership }
    end
  end

  # GET /list_ownerships/new
  # GET /list_ownerships/new.json
  def new
    @list_ownership = ListOwnership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_ownership }
    end
  end

  # GET /list_ownerships/1/edit
  def edit
    @list_ownership = ListOwnership.find(params[:id])
  end

  # POST /list_ownerships
  # POST /list_ownerships.json
  def create
    @list_ownership = ListOwnership.new(params[:list_ownership])

    respond_to do |format|
      if @list_ownership.save
        format.html { redirect_to @list_ownership, notice: 'List ownership was successfully created.' }
        format.json { render json: @list_ownership, status: :created, location: @list_ownership }
      else
        format.html { render action: "new" }
        format.json { render json: @list_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list_ownerships/1
  # PUT /list_ownerships/1.json
  def update
    @list_ownership = ListOwnership.find(params[:id])

    respond_to do |format|
      if @list_ownership.update_attributes(params[:list_ownership])
        format.html { redirect_to @list_ownership, notice: 'List ownership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_ownerships/1
  # DELETE /list_ownerships/1.json
  def destroy
    @list_ownership = ListOwnership.find(params[:id])
    @list_ownership.destroy

    respond_to do |format|
      format.html { redirect_to list_ownerships_url }
      format.json { head :no_content }
    end
  end
end
