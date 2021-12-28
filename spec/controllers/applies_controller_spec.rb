 require 'rails_helper'


 RSpec.describe AppliesController, type: :controller do 
  
  let(:apply) { FactoryBot.create :apply}
  
  describe 'before actions' do
    describe 'set_apply' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:set_apply)
      end
    end
  end



  #index 
  describe 'GET #index' do
    it 'is expected to show all the data' do
      get :index
      expect(assigns[:applies]).to eq(Apply.all)
    
    end
  end


  

  # for new user
 describe '#new ' do 
      it 'render :new' do
        new_user = FactoryBot.create :apply
        get :new, params: {apply: {id: new_user.id,name: 'dummydata',contact: 7894561235,experience: "2year",
        expectedSalary: 2000  } }
        expect(response).to render_template(:new)
      end
  end 



 # create action

 describe "post #create" do 
  it 'create the user' do
    new_user = FactoryBot.create :apply
     post :create, params: {apply: {id: new_user.id, name: new_user.name, contact: new_user.contact,
            experience: new_user.experience, expectedSalary: new_user.expectedSalary  } }
    
   end 
  
 end


  

 
  describe '#show' do
      it 'show the user with given id' do
        get :show, params: { id: apply.id }
        expect(assigns(:apply)).to eql(apply)
      end
    end

   describe '#edit ' do 
      it 'render :edit' do
        new_user = FactoryBot.create :apply
        get :edit, params: {
            id: new_user.id
        }
        expect(response).to render_template(:edit)
      end
    end 

    describe '#destroy ' do 
      it 'render :destroy' do
        new_user = FactoryBot.create :apply
        delete :destroy, params: {
            id: new_user.id
        }
        expect(response).to redirect_to applies_url
      end
    end 

    describe '#update' do
      it 'updates the job_post' do
        new_user = FactoryBot.create :apply
        patch :update, params: { apply: {  name: 'Ramakant tiwari', contact:8523697412, experience: '2 year', expectedSalary: 200}, id: new_user.id }
        expect(response).to redirect_to @apply
      end

    end
end

  