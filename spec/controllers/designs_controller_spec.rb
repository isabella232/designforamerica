require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe DesignsController do

  def mock_design(stubs={})
    @mock_design ||= mock_model(Design, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all designs as @designs" do
      Design.stub(:all) { [mock_design] }
      get :index
      assigns(:designs).should eq([mock_design])
    end
  end

  describe "GET show" do
    it "assigns the requested design as @design" do
      Design.stub(:find).with("37") { mock_design }
      get :show, :id => "37"
      assigns(:design).should be(mock_design)
    end
  end

  describe "GET new" do
    it "assigns a new design as @design" do
      Design.stub(:new) { mock_design }
      get :new
      assigns(:design).should be(mock_design)
    end
  end

  describe "GET edit" do
    it "assigns the requested design as @design" do
      Design.stub(:find).with("37") { mock_design }
      get :edit, :id => "37"
      assigns(:design).should be(mock_design)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created design as @design" do
        Design.stub(:new).with({'these' => 'params'}) { mock_design(:save => true) }
        post :create, :design => {'these' => 'params'}
        assigns(:design).should be(mock_design)
      end

      it "redirects to the created design" do
        Design.stub(:new) { mock_design(:save => true) }
        post :create, :design => {}
        response.should redirect_to(design_url(mock_design))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved design as @design" do
        Design.stub(:new).with({'these' => 'params'}) { mock_design(:save => false) }
        post :create, :design => {'these' => 'params'}
        assigns(:design).should be(mock_design)
      end

      it "re-renders the 'new' template" do
        Design.stub(:new) { mock_design(:save => false) }
        post :create, :design => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested design" do
        Design.stub(:find).with("37") { mock_design }
        mock_design.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :design => {'these' => 'params'}
      end

      it "assigns the requested design as @design" do
        Design.stub(:find) { mock_design(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:design).should be(mock_design)
      end

      it "redirects to the design" do
        Design.stub(:find) { mock_design(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(design_url(mock_design))
      end
    end

    describe "with invalid params" do
      it "assigns the design as @design" do
        Design.stub(:find) { mock_design(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:design).should be(mock_design)
      end

      it "re-renders the 'edit' template" do
        Design.stub(:find) { mock_design(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested design" do
      Design.stub(:find).with("37") { mock_design }
      mock_design.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the designs list" do
      Design.stub(:find) { mock_design }
      delete :destroy, :id => "1"
      response.should redirect_to(designs_url)
    end
  end

end