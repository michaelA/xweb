class EyeGlassesController < ApplicationController
  # GET /eye_glasses
  # GET /eye_glasses.xml
  def index
    @eye_glasses = EyeGlass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eye_glasses }
    end
  end

  # GET /eye_glasses/1
  # GET /eye_glasses/1.xml
  def show
    @eye_glass = EyeGlass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @eye_glass }
    end
  end

  # GET /eye_glasses/new
  # GET /eye_glasses/new.xml
  def new
    @eye_glass = EyeGlass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @eye_glass }
    end
  end

  # GET /eye_glasses/1/edit
  def edit
    @eye_glass = EyeGlass.find(params[:id])
  end

  # POST /eye_glasses
  # POST /eye_glasses.xml
  def create
    @eye_glass = EyeGlass.new(params[:eye_glass])

    respond_to do |format|
      if @eye_glass.save
        format.html { redirect_to(@eye_glass, :notice => 'Eye glass was successfully created.') }
        format.xml  { render :xml => @eye_glass, :status => :created, :location => @eye_glass }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @eye_glass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eye_glasses/1
  # PUT /eye_glasses/1.xml
  def update
    @eye_glass = EyeGlass.find(params[:id])

    respond_to do |format|
      if @eye_glass.update_attributes(params[:eye_glass])
        format.html { redirect_to(@eye_glass, :notice => 'Eye glass was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @eye_glass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eye_glasses/1
  # DELETE /eye_glasses/1.xml
  def destroy
    @eye_glass = EyeGlass.find(params[:id])
    @eye_glass.destroy

    respond_to do |format|
      format.html { redirect_to(eye_glasses_url) }
      format.xml  { head :ok }
    end
  end
end
