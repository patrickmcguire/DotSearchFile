require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SearchSubscriptionsController do

  # This should return the minimal set of attributes required to create a valid
  # SearchSubscription. As you add validations to SearchSubscription, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all search_subscriptions as @search_subscriptions" do
      search_subscription = SearchSubscription.create! valid_attributes
      get :index
      assigns(:search_subscriptions).should eq([search_subscription])
    end
  end

  describe "GET show" do
    it "assigns the requested search_subscription as @search_subscription" do
      search_subscription = SearchSubscription.create! valid_attributes
      get :show, :id => search_subscription.id.to_s
      assigns(:search_subscription).should eq(search_subscription)
    end
  end

  describe "GET new" do
    it "assigns a new search_subscription as @search_subscription" do
      get :new
      assigns(:search_subscription).should be_a_new(SearchSubscription)
    end
  end

  describe "GET edit" do
    it "assigns the requested search_subscription as @search_subscription" do
      search_subscription = SearchSubscription.create! valid_attributes
      get :edit, :id => search_subscription.id.to_s
      assigns(:search_subscription).should eq(search_subscription)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SearchSubscription" do
        expect {
          post :create, :search_subscription => valid_attributes
        }.to change(SearchSubscription, :count).by(1)
      end

      it "assigns a newly created search_subscription as @search_subscription" do
        post :create, :search_subscription => valid_attributes
        assigns(:search_subscription).should be_a(SearchSubscription)
        assigns(:search_subscription).should be_persisted
      end

      it "redirects to the created search_subscription" do
        post :create, :search_subscription => valid_attributes
        response.should redirect_to(SearchSubscription.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved search_subscription as @search_subscription" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchSubscription.any_instance.stub(:save).and_return(false)
        post :create, :search_subscription => {}
        assigns(:search_subscription).should be_a_new(SearchSubscription)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SearchSubscription.any_instance.stub(:save).and_return(false)
        post :create, :search_subscription => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested search_subscription" do
        search_subscription = SearchSubscription.create! valid_attributes
        # Assuming there are no other search_subscriptions in the database, this
        # specifies that the SearchSubscription created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SearchSubscription.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => search_subscription.id, :search_subscription => {'these' => 'params'}
      end

      it "assigns the requested search_subscription as @search_subscription" do
        search_subscription = SearchSubscription.create! valid_attributes
        put :update, :id => search_subscription.id, :search_subscription => valid_attributes
        assigns(:search_subscription).should eq(search_subscription)
      end

      it "redirects to the search_subscription" do
        search_subscription = SearchSubscription.create! valid_attributes
        put :update, :id => search_subscription.id, :search_subscription => valid_attributes
        response.should redirect_to(search_subscription)
      end
    end

    describe "with invalid params" do
      it "assigns the search_subscription as @search_subscription" do
        search_subscription = SearchSubscription.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchSubscription.any_instance.stub(:save).and_return(false)
        put :update, :id => search_subscription.id.to_s, :search_subscription => {}
        assigns(:search_subscription).should eq(search_subscription)
      end

      it "re-renders the 'edit' template" do
        search_subscription = SearchSubscription.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SearchSubscription.any_instance.stub(:save).and_return(false)
        put :update, :id => search_subscription.id.to_s, :search_subscription => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested search_subscription" do
      search_subscription = SearchSubscription.create! valid_attributes
      expect {
        delete :destroy, :id => search_subscription.id.to_s
      }.to change(SearchSubscription, :count).by(-1)
    end

    it "redirects to the search_subscriptions list" do
      search_subscription = SearchSubscription.create! valid_attributes
      delete :destroy, :id => search_subscription.id.to_s
      response.should redirect_to(search_subscriptions_url)
    end
  end

end
