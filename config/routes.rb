Rails.application.routes.draw do
  root 'students#index'
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :reports
  resources :teachers
  resources :visitors
  get 'reports/subjects', as: :report_subjects
  get 'teachers/subjects', as: :teacher_subjects
end
