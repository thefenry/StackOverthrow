require 'spec_helper'

describe UsersController do
  render_views

  describe '#show' do
    it "should show user profile"
  end

  describe '#new' do
    context 'logged in' do
      it "should redirect the user to their profile"
    end
    context 'not logged in' do
      it 'respond is ok' do
        get :new
        expect(response).to be_ok
      end
      it "should show a new user form" do
        get :new
        expect(response.body).to include 'form'
      end
    end
  end

  context '#create' do
    it "should add a new user to the database"
  end

  describe '#edit' do
    context "user is logged in" do
      it "should show an edit form"
    end

    context 'user is not logged in' do
      it "should redirect to login page"
    end
  end

  describe '#update' do
    it "should update a user details"
  end
end
