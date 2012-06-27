class MainmenusController < ApplicationController
  # GET /mainmenus
  # GET /mainmenus.xml
  def index
    @mainmenus = Mainmenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mainmenus }
    end
  end

  # GET /mainmenus/1
  # GET /mainmenus/1.xml
  def show
    @mainmenu = Mainmenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mainmenu }
    end
  end

  # GET /mainmenus/new
  # GET /mainmenus/new.xml
  def new
    @mainmenu = Mainmenu.new
    @menu = Mainmenu.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mainmenu }
    end
  end

  # GET /mainmenus/1/edit
  def edit
    @mainmenu = Mainmenu.find(params[:id])
    @menu = Mainmenu.all
  end

  # POST /mainmenus
  # POST /mainmenus.xml
  def create
    @mainmenu = Mainmenu.new(params[:mainmenu])

    respond_to do |format|
      if @mainmenu.save
        format.html { redirect_to(@mainmenu, :notice => 'Mainmenu was successfully created.') }
        format.xml  { render :xml => @mainmenu, :status => :created, :location => @mainmenu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mainmenu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mainmenus/1
  # PUT /mainmenus/1.xml
  def update
    @mainmenu = Mainmenu.find(params[:id])

    respond_to do |format|
      if @mainmenu.update_attributes(params[:mainmenu])
        format.html { redirect_to(@mainmenu, :notice => 'Mainmenu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mainmenu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mainmenus/1
  # DELETE /mainmenus/1.xml
  def destroy
    @mainmenu = Mainmenu.find(params[:id])
    @mainmenu.destroy

    respond_to do |format|
      format.html { redirect_to(mainmenus_url) }
      format.xml  { head :ok }
    end
  end
end
