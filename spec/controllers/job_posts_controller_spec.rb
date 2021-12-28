require 'rails_helper'

 RSpec.describe JobPostsController, :type => :controller do 

    let(:job_post) {FactoryBot.create :job_post}

    

    describe '#index' do
      it 'render a template' do
        get :index
        expect(assigns[:job_posts]).to eq(JobPost.all)
      end
    end

    

     describe '#new ' do 
      it 'render :new' do
        new_user = FactoryBot.create :job_post
        get :new, params: {job_post: {id: new_user.id,title: 'dummydata',description: "dummydata",
            contact: 7894561235,salary: 2000 } }
        expect(response).to render_template(:new)
      end
    end 

    describe '#create' do
      it 'redirects to @job_post' do
        new_user = FactoryBot.create :job_post
        post :create, params: {job_post: {id: new_user.id, title: new_user.title, description: new_user.description,
            contact: new_user.contact, salary: new_user.salary  } }
  
      end
    end

    describe '#show' do
      it 'show the user with given id' do
        get :show, params: { id: job_post.id }

        expect(assigns(:job_post)).to eql(job_post)
      end
    end

    describe '#search' do 
      it 'is use to search job based on title' do 
        get :search, params: { title: job_post.title }
        expect(response).to redirect_to job_posts_path
      end
    end

    describe '#edit ' do 
      it 'render :edit' do
        new_user = FactoryBot.create :job_post
        get :edit, params: { id: new_user.id }
        expect(response).to render_template(:edit)
      end
    end 

    describe '#destroy ' do 
      it 'render :destroy' do
        new_user = FactoryBot.create :job_post
        delete :destroy, params: {id: new_user.id}
        expect(response).to redirect_to job_posts_url
      end
    end 

    describe '#update' do
      it 'updates the job_post' do
        new_user = FactoryBot.create :job_post
        patch :update, params: { job_post: { title: 'newtitle', description: 'new-dummy-project', contact:8523697415,salary: 2000 }, id: new_user.id }
        expect(response).to redirect_to @job_post
      end

    end
end