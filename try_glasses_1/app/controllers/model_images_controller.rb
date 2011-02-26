class ModelImagesController < ApplicationController
  # GET /model_images
  # GET /model_images.xml
  def index
    @model_images = ModelImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @model_images }
    end
  end

  # GET /model_images/1
  # GET /model_images/1.xml
  def show
    @model_image = ModelImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @model_image }
    end
  end

  # GET /model_images/new
  # GET /model_images/new.xml
  def new
    @model_image = ModelImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @model_image }
    end
  end

  # GET /model_images/1/edit
  def edit
    @model_image = ModelImage.find(params[:id])
  end

  # POST /model_images
  # POST /model_images.xml
  def create
    @model_image = ModelImage.new(params[:model_image])

    respond_to do |format|
      if @model_image.save
        format.html { redirect_to(@model_image, :notice => 'Model image was successfully created.') }
        format.xml  { render :xml => @model_image, :status => :created, :location => @model_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @model_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /model_images/1
  # PUT /model_images/1.xml
  def update
    @model_image = ModelImage.find(params[:id])

    respond_to do |format|
      if @model_image.update_attributes(params[:model_image])
        format.html { redirect_to(@model_image, :notice => 'Model image was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @model_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /model_images/1
  # DELETE /model_images/1.xml
  def destroy
    @model_image = ModelImage.find(params[:id])
    @model_image.destroy

    respond_to do |format|
      format.html { redirect_to(model_images_url) }
      format.xml  { head :ok }
    end
  end
end
