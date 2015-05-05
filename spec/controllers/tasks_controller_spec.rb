describe TasksController do

  describe 'POST #create' do
    it 'renders the new task template' do

      get :new
      expect(response).to render_template(:new)
      expect(response).to have_http_status(:ok)
    end

    context 'valid attributes' do
      it 'saves the task' do
        task = build(:task)

        task_count = Task.count

        post :create, task: { name: task.name }

        expect(Task.count).to eq(task_count + 1)
      end
    end

    context 'blank form' do
      it 'renders the new template with an alert on failed save' do

        post :create, task: { name: nil }

        expect(response).to render_template(:new)
        expect(flash[:alert]).to eq(I18n.t('flashes.tasks.create.failure'))
      end
    end
  end
end
