class AdminDataController < ApplicationController
  # GET /admin_data
  # GET /admin_data.json
  def index
    @admin_data = AdminDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_data }
    end
  end

  # GET /admin_data/1
  # GET /admin_data/1.json
  def show
    @admin_datum = AdminDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_datum }
    end
  end

  # GET /admin_data/new
  # GET /admin_data/new.json
  def new
    @admin_datum = AdminDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_datum }
    end
  end

  # GET /admin_data/1/edit
  def edit
    @admin_datum = AdminDatum.find(params[:id])
  end

  # POST /admin_data
  # POST /admin_data.json
  def create
    @admin_datum = AdminDatum.new(params[:admin_datum])

    respond_to do |format|
      if @admin_datum.save
        format.html { redirect_to @admin_datum, notice: 'Admin datum was successfully created.' }
        format.json { render json: @admin_datum, status: :created, location: @admin_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_data/1
  # PUT /admin_data/1.json
  def update
    @admin_datum = AdminDatum.find(params[:id])

    respond_to do |format|
      if @admin_datum.update_attributes(params[:admin_datum])
        format.html { redirect_to @admin_datum, notice: 'Admin datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_data/1
  # DELETE /admin_data/1.json
  def destroy
    @admin_datum = AdminDatum.find(params[:id])
    @admin_datum.destroy

    respond_to do |format|
      format.html { redirect_to admin_data_url }
      format.json { head :no_content }
    end
  end
end
