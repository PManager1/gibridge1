class Blog2sController < ApplicationController
  # GET /blog2s
  # GET /blog2s.json
  def index
    @blog2s = Blog2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog2s }
    end
  end

  # GET /blog2s/1
  # GET /blog2s/1.json
  def show
    @blog2 = Blog2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog2 }
    end
  end

  # GET /blog2s/new
  # GET /blog2s/new.json
  def new
    @blog2 = Blog2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog2 }
    end
  end

  # GET /blog2s/1/edit
  def edit
    @blog2 = Blog2.find(params[:id])
  end

  # POST /blog2s
  # POST /blog2s.json
  def create
    @blog2 = Blog2.new(params[:blog2])

    respond_to do |format|
      if @blog2.save
        format.html { redirect_to @blog2, notice: 'Blog2 was successfully created.' }
        format.json { render json: @blog2, status: :created, location: @blog2 }
      else
        format.html { render action: "new" }
        format.json { render json: @blog2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog2s/1
  # PUT /blog2s/1.json
  def update
    @blog2 = Blog2.find(params[:id])

    respond_to do |format|
      if @blog2.update_attributes(params[:blog2])
        format.html { redirect_to @blog2, notice: 'Blog2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog2s/1
  # DELETE /blog2s/1.json
  def destroy
    @blog2 = Blog2.find(params[:id])
    @blog2.destroy

    respond_to do |format|
      format.html { redirect_to blog2s_url }
      format.json { head :no_content }
    end
  end
end
