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

describe BroadcastsController do

  # This should return the minimal set of attributes required to create a valid
  # Broadcast. As you add validations to Broadcast, be sure to
  # update the return value of this method accordingly.
  before :each do
    @message = "Test Message"
    @user = FactoryGirl.create :user
    sign_in @user
  end
  
  def valid_attributes
    {:message => @message}
  end

  describe "GET index" do
    it "assigns all broadcasts as @broadcasts" do
      broadcast = Broadcast.create! valid_attributes
      get :index, {}
      assigns(:broadcasts).should eq([broadcast])
    end
  end

  describe "GET show" do
    it "assigns the requested broadcast as @broadcast" do
      broadcast = Broadcast.create! valid_attributes
      get :show, {:id => broadcast.to_param}
      assigns(:broadcast).should eq(broadcast)
    end
  end

  describe "GET new" do
    it "assigns a new broadcast as @broadcast" do
      get :new, {}
      assigns(:broadcast).should be_a_new(Broadcast)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Broadcast" do
        expect {
          post :create, {:broadcast => valid_attributes}
        }.to change(Broadcast, :count).by(1)
      end

      it "sends out sms to all the subscribers" do
        @user.subscribers.create!
        @user.subscribers.create!
        
        # Subscriber.any_instance.should_receive(:send_message).with(@message).twice
        post :create, {:broadcast => valid_attributes}   
      end
      
      it "assigns a newly created broadcast as @broadcast" do
        post :create, {:broadcast => valid_attributes}
        assigns(:broadcast).should be_a(Broadcast)
        assigns(:broadcast).should be_persisted
      end

      it "redirects to the created broadcast" do
        post :create, {:broadcast => valid_attributes}
        response.should redirect_to(Broadcast.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved broadcast as @broadcast" do
        # Trigger the behavior that occurs when invalid params are submitted
        Broadcast.any_instance.stub(:save).and_return(false)
        post :create, {:broadcast => {}}
        assigns(:broadcast).should be_a_new(Broadcast)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Broadcast.any_instance.stub(:save).and_return(false)
        post :create, {:broadcast => {}}
        response.should render_template("new")
      end
    end
  end

end
