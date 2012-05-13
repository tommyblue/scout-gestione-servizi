class HelpsController < ApplicationController
  # GET /helps
  # GET /helps.json
  def index
    @helps = Help.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @helps }
    end
  end

  # GET /helps/1
  # GET /helps/1.json
  def show
    @help = Help.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @help }
    end
  end

  # GET /helps/new
  # GET /helps/new.json
  def new
    @camp = Camp.find(params[:camp_id])
    @help = Help.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @help }
    end
  end

  # GET /helps/1/edit
  def edit
    @camp = Camp.find(params[:camp_id])
    @help = Help.find(params[:id])
  end

  # POST /helps
  # POST /helps.json
  def create
    camp = Camp.find(params[:camp_id])
    @help = Help.new(params[:help])
    @help.camp = camp

    respond_to do |format|
      if @help.save
        format.html { redirect_to camp, notice: 'Help was successfully created.' }
        format.json { render json: camp, status: :created, location: @help }
      else
        format.html { render action: "new" }
        format.json { render json: @help.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /helps/1
  # PUT /helps/1.json
  def update
    @help = Help.find(params[:id])

    respond_to do |format|
      if @help.update_attributes(params[:help])
        format.html { redirect_to @help, notice: 'Help was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @help.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helps/1
  # DELETE /helps/1.json
  def destroy
    @help = Help.find(params[:id])
    @help.destroy

    respond_to do |format|
      format.html { redirect_to helps_url }
      format.json { head :no_content }
    end
  end
end
