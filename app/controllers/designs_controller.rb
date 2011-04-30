class DesignsController < ApplicationController
  # GET /designs
  # GET /designs.xml
  def index
    if params[:project_id]
    @designs = Design.where(:project_id => params[:project_id])
    else
    @designs = Design.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @designs }
    end
  end

  # GET /designs/1
  # GET /designs/1.xml
  def show
    @design = Design.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @design }
    end
  end

  # GET /designs/new
  # GET /designs/new.xml
  def new
    @design = Design.new
    @project = current_user.projects.find(params[:project_id])
     
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @design }
    end
  end

  # GET /designs/1/edit
  def edit
    @design = current_user.designs.find(params[:id])
  end

  # POST /designs
  # POST /designs.xml
  def create
    @design = current_user.designs.new(params[:design])
    
    respond_to do |format|
      if @design.save
        format.html { redirect_to(@design, :notice => 'Design was successfully created.') }
        format.xml  { render :xml => @design, :status => :created, :location => @design }
      else
        format.html { render :action => "new", :project_id => @design.project_id }
        format.xml  { render :xml => @design.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /designs/1
  # PUT /designs/1.xml
  def update
    @design = current_user.designs.find(params[:id])

    respond_to do |format|
      if @design.update_attributes(params[:design])
        format.html { redirect_to(@design, :notice => 'Design was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @design.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def vote_up
    begin
      current_user.vote_for(@design = Design.find(params[:id]))
      render :nothing => true, :status => 200
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  # DELETE /designs/1
  # DELETE /designs/1.xml
  def destroy
    @design = Design.find(params[:id])
    @design.destroy

    respond_to do |format|
      format.html { redirect_to(designs_url) }
      format.xml  { head :ok }
    end
  end
end
