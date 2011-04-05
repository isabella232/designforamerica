class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :only => [:edit, :update]
  # GET /profiles
  # GET /profiles.xml
  def index
    @profiles = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.xml
  def show
    @profile = Profile.find(params[:id])
    @profiles = Profile.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @profiles }
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = current_user.profile
  end

  # PUT /profiles/1
  # PUT /profiles/1.xml
  def update
    @profile = current_user.profile

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to(@profile, :notice => 'Profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

end
