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

describe ContactInquiriesController do

  # This should return the minimal set of attributes required to create a valid
  # ContactInquiry. As you add validations to ContactInquiry, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "email" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactInquiriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contact_inquiries as @contact_inquiries" do
      contact_inquiry = ContactInquiry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contact_inquiries).should eq([contact_inquiry])
    end
  end

  describe "GET show" do
    it "assigns the requested contact_inquiry as @contact_inquiry" do
      contact_inquiry = ContactInquiry.create! valid_attributes
      get :show, {:id => contact_inquiry.to_param}, valid_session
      assigns(:contact_inquiry).should eq(contact_inquiry)
    end
  end

  describe "GET new" do
    it "assigns a new contact_inquiry as @contact_inquiry" do
      get :new, {}, valid_session
      assigns(:contact_inquiry).should be_a_new(ContactInquiry)
    end
  end

  describe "GET edit" do
    it "assigns the requested contact_inquiry as @contact_inquiry" do
      contact_inquiry = ContactInquiry.create! valid_attributes
      get :edit, {:id => contact_inquiry.to_param}, valid_session
      assigns(:contact_inquiry).should eq(contact_inquiry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ContactInquiry" do
        expect {
          post :create, {:contact_inquiry => valid_attributes}, valid_session
        }.to change(ContactInquiry, :count).by(1)
      end

      it "assigns a newly created contact_inquiry as @contact_inquiry" do
        post :create, {:contact_inquiry => valid_attributes}, valid_session
        assigns(:contact_inquiry).should be_a(ContactInquiry)
        assigns(:contact_inquiry).should be_persisted
      end

      it "redirects to the created contact_inquiry" do
        post :create, {:contact_inquiry => valid_attributes}, valid_session
        response.should redirect_to(ContactInquiry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contact_inquiry as @contact_inquiry" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactInquiry.any_instance.stub(:save).and_return(false)
        post :create, {:contact_inquiry => { "email" => "invalid value" }}, valid_session
        assigns(:contact_inquiry).should be_a_new(ContactInquiry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactInquiry.any_instance.stub(:save).and_return(false)
        post :create, {:contact_inquiry => { "email" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contact_inquiry" do
        contact_inquiry = ContactInquiry.create! valid_attributes
        # Assuming there are no other contact_inquiries in the database, this
        # specifies that the ContactInquiry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContactInquiry.any_instance.should_receive(:update_attributes).with({ "email" => "MyString" })
        put :update, {:id => contact_inquiry.to_param, :contact_inquiry => { "email" => "MyString" }}, valid_session
      end

      it "assigns the requested contact_inquiry as @contact_inquiry" do
        contact_inquiry = ContactInquiry.create! valid_attributes
        put :update, {:id => contact_inquiry.to_param, :contact_inquiry => valid_attributes}, valid_session
        assigns(:contact_inquiry).should eq(contact_inquiry)
      end

      it "redirects to the contact_inquiry" do
        contact_inquiry = ContactInquiry.create! valid_attributes
        put :update, {:id => contact_inquiry.to_param, :contact_inquiry => valid_attributes}, valid_session
        response.should redirect_to(contact_inquiry)
      end
    end

    describe "with invalid params" do
      it "assigns the contact_inquiry as @contact_inquiry" do
        contact_inquiry = ContactInquiry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactInquiry.any_instance.stub(:save).and_return(false)
        put :update, {:id => contact_inquiry.to_param, :contact_inquiry => { "email" => "invalid value" }}, valid_session
        assigns(:contact_inquiry).should eq(contact_inquiry)
      end

      it "re-renders the 'edit' template" do
        contact_inquiry = ContactInquiry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactInquiry.any_instance.stub(:save).and_return(false)
        put :update, {:id => contact_inquiry.to_param, :contact_inquiry => { "email" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contact_inquiry" do
      contact_inquiry = ContactInquiry.create! valid_attributes
      expect {
        delete :destroy, {:id => contact_inquiry.to_param}, valid_session
      }.to change(ContactInquiry, :count).by(-1)
    end

    it "redirects to the contact_inquiries list" do
      contact_inquiry = ContactInquiry.create! valid_attributes
      delete :destroy, {:id => contact_inquiry.to_param}, valid_session
      response.should redirect_to(contact_inquiries_url)
    end
  end

end
